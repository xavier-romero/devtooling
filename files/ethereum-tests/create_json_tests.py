import yaml
import json
import solcx
import subprocess
import shutil
import re
import os
import sys
from web3 import Web3
from glob import glob

# These env vars are used if set for output .sh:
# RPC_URL
# PRV_KEY

SOLCX_DEFAULT_VERSION = '0.8.18'
SOLCX_SELFDESTRUCT_VERSION = '0.8.10'

solcx.install_solc(SOLCX_DEFAULT_VERSION)
solcx.install_solc(SOLCX_SELFDESTRUCT_VERSION)
solcx.set_solc_version(SOLCX_DEFAULT_VERSION)

OUTPUT_FILE = sys.argv[1] if len(sys.argv) > 1 else 'tests'
if '/' in OUTPUT_FILE:
    # To avoid removing random paths
    raise ValueError(
        f'Invalid output file: {OUTPUT_FILE}, needs to be a relative path')


def _normalize_int(v):
    hexa_chars = ['a', 'b', 'c', 'd', 'e', 'f', 'A', 'B', 'C', 'D', 'E', 'F']
    if not v:
        return 0
    if isinstance(v, int):
        return v
    elif isinstance(v, str):
        if v == '0x':
            return 0
        elif v.startswith('0x') or any(x in v for x in hexa_chars):
            return int(v, 16)
        else:
            return int(v)
    else:
        raise ValueError(f'Invalid integer: {v}')


def _normalize_addr(addr):
    if not addr:
        return None
    if isinstance(addr, int):
        return "0x" + f"{addr:x}".zfill(40)
    elif isinstance(addr, str):
        return "0x" + f"{int(addr, 16):x}".zfill(40)
    else:
        raise ValueError(f'Invalid address: {addr}')


def _normalize_prv_key(prv_key):
    return _normalize_addr(prv_key)


def _wrap_deployed_bytecode(fixed_bytecode, deployed_bytecode):
    # 0000: 63 XX XX XX XX  ; PUSH4 to indicate the size of the data
    # 0005: 60 XX           ; PUSH4 to indicate the offset in the call data
    # 0007: 60 00           ; PUSH1 0 destination offset in memory
    # 0008: 39              ; CODECOPY destOffset, offset, size
    # 0009: 63 XX XX XX XX  ; PUSH4 size of the data to be returned from memory
    # 000E: 60 00           ; PUSH0 offset 0
    # 000F: F3              ; RETURN
    # 0010: CODE..........  ; CODE starts here

    if not (
        isinstance(fixed_bytecode, str) and isinstance(deployed_bytecode, str)
    ):
        raise ValueError('Invalid bytecode received')

    if deployed_bytecode.startswith("0x"):
        deployed_bytecode = deployed_bytecode[2:]

    if not deployed_bytecode:
        return fixed_bytecode

    if fixed_bytecode.startswith("0x"):
        fixed_bytecode = fixed_bytecode[2:]

    codecopy_size = len(deployed_bytecode) // 2
    codecopy_offset = (len(fixed_bytecode) // 2) + 10 + 8

    bytecode = \
        f"{fixed_bytecode}" \
        f"63{codecopy_size:08x}60{codecopy_offset:02x}600039" \
        f"63{codecopy_size:08x}6000F3" \
        f"{deployed_bytecode}"
    # bytecode = \
    #     FIXED(STORAGE) BYTECODE
    #     SIZE OFFSET DESTOFFSET --> CODECOPY
    #     SIZE OFFSET --> RETURN
    #     DEPLOYED BYTECODE

    return bytecode


def __normalize_yul(yul_code, info={}):
    yul_code = yul_code.lstrip().rstrip()
    if yul_code.startswith('{'):
        evm_version = 'paris'
    else:
        idx = min(yul_code.index('{'), yul_code.index(' '))
        evm_version = yul_code[:idx].rstrip().lstrip()
        yul_code = yul_code[idx:].lstrip().rstrip()

    if evm_version == 'shanghai':
        evm_version = 'paris'

    if yul_code.startswith("object"):
        object = \
            yul_code[6:yul_code.index('{')].rstrip().lstrip()[1:-1]
    else:
        object = "object"

    if yul_code.startswith("optimise"):
        yul_code = yul_code[8:].lstrip()

    # if 'selfdestruct' in yul_code:
    if (
        bool(re.search("\n[^\n^/]*selfdestruct", yul_code)) or
        ('selfdestruct' in yul_code and '//' not in yul_code)
    ):
        solcx.set_solc_version(SOLCX_SELFDESTRUCT_VERSION)
        evm_version = 'berlin'
    else:
        solcx.set_solc_version(SOLCX_DEFAULT_VERSION)

    print(
        f"Compiling Yul code for: {info} evm={evm_version}, "
        f"solc={solcx.get_solc_version()}"
    )
    solc_out = solcx.compile_standard(
        {
            "language": "Yul",
            "sources": {"data": {"content": yul_code}},
            "settings": {
                "outputSelection": {
                    "data": {"*": ["evm.bytecode"]}
                },
                'evmVersion': evm_version,
            },
        }
    )
    if contracts := solc_out.get('contracts'):
        return '0x' + \
            contracts['data'][object]['evm']['bytecode']['object']
    else:
        print(f"***ERROR: Failed to compile Yul code: {yul_code}")
        return None


def __normalize_lll(lll_code, info={}):
    with open('tmp.lll', 'w') as fout:
        fout.write(lll_code)
    print(f"Compiling LLLC code for: {info}")
    result = subprocess.run(
        ['/home/xavi/.local/bin/lllc', 'tmp.lll'],
        stdout=subprocess.PIPE, stderr=subprocess.PIPE
    )
    if result.returncode == 0:
        return '0x' + result.stdout.decode().strip()
    else:
        print(f"***ERROR: Failed to compile LLL code: {lll_code}")
        return None


def _normalize_bytecode(bytecode, storage, info={}):
    storage_bytecode = '0x'
    for k, v in storage.items():
        for x in [v, k]:
            x = _normalize_int(x)
            _b = hex(x)[2:]
            if len(_b) % 2:
                _b = '0' + _b
            _l = len(_b) // 2
            _push_code = 0x5F + _l
            storage_bytecode += f"{_push_code:02x}{_b}"
        storage_bytecode += '55'

    code_bytecode = '0x'
    if isinstance(bytecode, int):
        code_bytecode = hex(bytecode)
    elif isinstance(bytecode, str):
        if bytecode == '0x':
            pass
        elif bytecode.startswith('0x'):
            code_bytecode = hex(int(bytecode, 16))
        elif bytecode.startswith(':yul'):
            code_bytecode = __normalize_yul(bytecode[4:], info)
        elif bytecode.startswith(':raw'):
            code_bytecode = bytecode[4:].lstrip().rstrip()
        elif bytecode.startswith('{'):
            code_bytecode = __normalize_lll(bytecode, info)
        else:
            code_bytecode = bytecode
    else:
        raise ValueError(f'Invalid bytecode: {bytecode}')

    return code_bytecode[2:], storage_bytecode[2:]


def __normalize_func_param(param):
    r = hex(_normalize_int(param))

    # if isinstance(param, int):
    #     r = hex(param)
    # elif isinstance(param, str):
    #     if param.startswith('0x'):
    #         r = hex(int(param, 16))
    #     else:
    #         r = hex(int(param))
    # else:
    #     raise ValueError(f'Invalid parameter: {param}')

    return "0x" + r[2:].zfill(64)


def _normalize_calldata(calldata):
    if not calldata or calldata == '0x':
        return None
    if isinstance(calldata, str):
        if calldata.startswith(':raw'):
            return calldata[4:].lstrip().rstrip()
        elif calldata.startswith(':abi'):
            calldata = calldata[4:].lstrip().rstrip()
            if ' ' in calldata:
                _selector, _args = calldata.split(' ', 1)
            else:
                _selector = calldata
                _args = ''
            _calldata = Web3().keccak(text=_selector).hex()[:8]
            for _arg in _args.split():
                _calldata += __normalize_func_param(_arg)[2:]
            return _calldata
        elif calldata.startswith('{'):
            return __normalize_lll(calldata)
        else:
            raise ValueError(f'Invalid calldata: {calldata}')
    else:
        raise ValueError(f'Invalid calldata: {calldata}')


def _load_test_from_file(filename):
    _tests = {}
    if filename.endswith('.json'):
        with open(filename, 'r') as fin:
            _tests = json.load(fin)
    elif filename.endswith('.yml'):
        file_content = ''
        with open(filename, 'r') as fin:
            for line in fin:
                line = line.rstrip()
                file_content += line + '\n'

        _tests = yaml.load(file_content, Loader=yaml.FullLoader)
    else:
        raise ValueError(f'Invalid file extension: {filename}')

    if not isinstance(_tests, dict):
        print(f'***ERROR Invalid test format: {filename} ({type(_tests)})')
        return {}

    return _tests


def _normalize_tx(tx, senders):
    # Normalize 'to' fields
    if 'to' in tx:
        tx['to'] = _normalize_addr(tx['to'])

    # Processing value
    _value = tx.get('value', 0) or 0  # Set to 0 also if value = ''
    tx['value'] = _normalize_int(_value)

    # Retrieve sender from key, and add to senders list
    if 'secretKey' in tx:
        secret_key = _normalize_prv_key(tx['secretKey'])
        del tx['secretKey']
        _from = \
            Web3().eth.account.from_key(secret_key).address
        tx['from'] = _from

        if _from in senders:
            senders[_from]['value'] += tx['value']
            senders[_from]['count'] += 1
        else:
            senders[_from] = {
                'prvkey': secret_key,
                'value': tx['value'],
                'count': 1
            }

    # Normalize 'data' field
    if 'data' in tx:
        tx['data'] = _normalize_calldata(tx['data'])

    # Remove unused fields
    for f in [
        'accessList', 'maxPriorityFeePerGas', 'maxFeePerGas',
        'expectException'
    ]:
        if f in tx:
            del tx[f]

    return tx, senders


def _create_sh_file(tests):
    if os.path.exists(OUTPUT_FILE):
        if not os.path.isdir(OUTPUT_FILE):
            print(f"***ERROR: {OUTPUT_FILE} exists and is not a directory")
            return
        else:
            print(f"***WARN: {OUTPUT_FILE} exists and will be overwritten")
            shutil.rmtree(OUTPUT_FILE)
    os.mkdir(OUTPUT_FILE)

    if os.path.exists(f"{OUTPUT_FILE}.sh"):
        print(f"***WARN: {OUTPUT_FILE}.sh exists and will be overwritten")
        os.remove(f"{OUTPUT_FILE}.sh")

    rpc_url = os.environ.get('RPC_URL', 'http://localhost:8545')
    test_folder = os.environ.get('TEST_FOLDER', '.')
    master_prv_key = os.environ.get('PRV_KEY', '0x' + '0' * 64)
    master_addr = Web3().eth.account.from_key(master_prv_key).address

    sh_out = open(f"{OUTPUT_FILE}.sh", 'w')
    sh_out.write("TEST_FOLDER=${TEST_FOLDER:-"+test_folder+"}\n")
    sh_out.write("RPC_URL=${L2_RPC_URL:-"+rpc_url+"}\n")
    sh_out.write(f"# PRV_KEY for master sender with addr: {master_addr}\n")  # noqa
    sh_out.write("PRV_KEY=${L2_PRV_KEY:-"+master_prv_key+"}\n")
    sh_out.write("GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)\n\n")
    sh_out.write(f"NONCE=$(cast nonce --rpc-url $RPC_URL {master_addr})\n")
    sh_out.write("NONCE=$((NONCE))\n\n")

    total_transactions = 1
    test_master_sender_amount = "5ether"
    sh_out.write(f"TEST_MASTER_SENDER_AMOUNT={test_master_sender_amount}\n\n")

    for test_name, test in tests.items():
        print(f"Generating sh output file. Processing test: {test_name}")

        test_master_sender = Web3().eth.account.create()
        test_master_sender_addr = test_master_sender.address
        test_master_sender_prv_key = test_master_sender.key.hex()

        sh_out.write(f"echo \"Funding sender {test_master_sender_addr} for test {test_name} with $TEST_MASTER_SENDER_AMOUNT\"...\n")  # noqa
        sh_out.write(f"TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT {test_master_sender_addr})\n")  # noqa
        sh_out.write("NONCE=$((NONCE+1))\n\n")

        test_out = open(f"{OUTPUT_FILE}/{test_name}.sh", 'w')
        # Passed by env vars from master sh
        # test_out.write(f"RPC_URL={rpc_url}\n")
        test_out.write(f"# PRV_KEY for master sender {test_master_sender_addr}\n")  # noqa
        test_out.write(f"PRV_KEY={test_master_sender_prv_key}\n")
        test_out.write("GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)\n\n")

        test_out.write(f"echo \"Test {test_name} ({test['file']})\"\n\n")

        for sender_addr, sender_data in test['senders'].items():
            replacement_account = Web3().eth.account.create()
            sender_data['real_addr'] = replacement_account.address
            replace_sender_addr = replacement_account.address
            sender_data['prvkey'] = replacement_account.key.hex()

            test_out.write(f"AMOUNT=$((2*150000*{sender_data.get('count', 0)}*$GAS_PRICE+{sender_data.get('value', 0)}))\n")  # noqa
            test_out.write(f"echo \"[{test_name}] Funding sender {sender_addr}(remapped to {replace_sender_addr}) with $AMOUNT\"...\n")  # noqa
            test_out.write(f"STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT {replace_sender_addr} | jq -r .status)\n")  # noqa
            test_out.write('if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi\n')  # noqa
            test_out.write('\n')

        for receiver_addr, receiver_data in test['receivers'].items():
            if code := receiver_data.get('code'):
                receiver_addr_bash = "ADDR_" + receiver_addr[2:].upper()
                balance = receiver_data.get('balance', 0)
                test_out.write(f"echo \"[{test_name}] Creating receiver {receiver_addr} with code and balance {balance}...\"\n")  # noqa
                test_out.write(f"{receiver_addr_bash}=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value {balance} --create {code} | jq -r .contractAddress)\n")  # noqa
                test_out.write(f"echo ${receiver_addr_bash}\n\n")

        for tx in test['transactions']:
            _to = tx.get('to')
            _data = tx.get('data')
            _from = tx.get('from')
            if not _from:
                print(f"***ERROR: Missing 'from' in transaction: {tx} for test {test_name}")  # noqa
                continue

            _prv_key = test['senders'][_from].get('prvkey')
            _from = test['senders'][_from]['real_addr']
            if not _prv_key:
                print(f"***ERROR: Missing 'prvkey' for sender {tx.get('from')}(remapped to {_from}) in test {test_name}")  # noqa
                continue

            test_out.write(f"echo \"[{test_name}] Processing transaction number {total_transactions} from {tx.get('from')}(remapped to {_from}) to {_to}\"...\n")  # noqa
            if _to:
                if (
                    _to in test['receivers'] and
                    test['receivers'][_to].get('code')
                ):
                    receiver_addr_bash = "ADDR_" + _to[2:].upper()
                    params = f"${receiver_addr_bash}"
                else:
                    params = _to
                if _data:
                    params += f" {_data}"
            else:
                if _data:
                    params = f"--create {_data}"
                else:
                    print(f"***ERROR: Missing 'to' or 'data' in transaction: {tx} for test {test_name}")  # noqa
                    continue
            test_out.write(f"STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key {_prv_key} --timeout 20 --value {tx.get('value', 0)} {params} | jq -r .status)\n")  # noqa
            test_out.write('if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi\n')  # noqa
            test_out.write('\n')
            total_transactions += 1

        test_out.close()
        os.chmod(f"{OUTPUT_FILE}/{test_name}.sh", 0o755)

    sh_out.write("echo \"Allowing 5s to process txs\"\n")
    sh_out.write("sleep 5\n")
    sh_out.write("echo \"Confirming last txhash: $TXHASH...\"\n")
    sh_out.write("STATUS=$(cast receipt -j --rpc-url $RPC_URL $TXHASH | jq -r .status)\n")  # noqa
    sh_out.write('if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi\n\n')  # noqa

    print(f"Total transactions written to sh files: {total_transactions}")

    sh_out.write("echo \"Running tests...\"\n")
    n = 1
    for test_name in tests.keys():
        if n % 5 == 0:
            sh_out.write("sleep 10\n")
        sh_out.write(
            f"RPC_URL=$RPC_URL $TEST_FOLDER/{OUTPUT_FILE}/{test_name}.sh &\n")
        n += 1

    sh_out.close()
    os.chmod(f"{OUTPUT_FILE}.sh", int('755', 8))


tests = {}
json_file = f"{OUTPUT_FILE}.json"

if os.path.exists(json_file):
    tests = json.load(open(json_file))
else:
    files_to_process = []
    files_to_process.extend(glob('src/*/**/*.json', recursive=True))
    files_to_process.extend(glob('src/**/*.yml', recursive=True))

    for filename in files_to_process:
        print(f"Processing file: {filename}")
        _tests = _load_test_from_file(filename)

        for k, v in _tests.items():
            test = {
                'file': filename,
                'senders': {},
                'receivers': {},
                'transactions': [],
            }
            receivers = {
                _normalize_addr(_k): _v
                for _k, _v in v.get('pre', {}).items()
                if not (isinstance(_k, str) and _k.startswith('//'))
            }
            for _k, _v in receivers.items():
                _v['balance'] = _normalize_int(_v.get('balance', 0))
                if _v.get('code') or _v.get('storage'):
                    _code_bytecode, _storage_bytecode = _normalize_bytecode(
                        _v.get('code'), _v.get('storage'),
                        info={'file': filename, 'addr': _k}
                    )
                    if _code_bytecode:
                        _bytecode = _wrap_deployed_bytecode(
                            fixed_bytecode=_storage_bytecode,
                            deployed_bytecode=_code_bytecode
                        )
                    elif _storage_bytecode:
                        _bytecode = _storage_bytecode
                    else:
                        _bytecode = None

                    _v['code'] = _bytecode

            senders = {}
            for block in v.get('blocks', []):
                for tx in block.get('transactions', []):
                    tx, senders = _normalize_tx(tx, senders)
                    test['transactions'].append(tx)

            used_addresses = \
                [tx['to'] for tx in test['transactions'] if 'to' in tx]
            used_addresses.extend(
                [tx['from'] for tx in test['transactions'] if 'from' in tx]
            )

            # Remove possible unused senders
            #  For receivers we don't, as they may be called from SCs
            test['receivers'] = receivers
            for addr in senders.keys():
                if addr in used_addresses:
                    test['senders'][addr] = senders[addr]

            if not test['transactions']:
                continue

            if k in tests:
                print(f'Duplicate test name: {k}')
            else:
                for _tx in test['transactions']:
                    # json files include tx with r s v instead:
                    # assert 'from' in _tx, f"Missing from: {_tx}"
                    assert 'to' in _tx, f"Missing to: {_tx}"
                    assert 'value' in _tx, f"Missing value: {_tx}"
                    assert 'data' in _tx, f"Missing data: {_tx}"
                    if 'from' in _tx:
                        assert _tx['from'] in test['senders'], \
                            f"Sender {_tx['from']} not found"
                for sender_k, sender_v in test['senders'].items():
                    assert 'value' in sender_v, f"Sender {sender_k} has no value"  # noqa
                    assert 'count' in sender_v, f"Sender {sender_k} has no count"  # noqa
                    assert 'prvkey' in sender_v, f"Sender {sender_k} has no prvkey"  # noqa
                for receiver_k, receiver_v in test['receivers'].items():
                    assert 'code' in receiver_v, \
                        f"Receiver {receiver_k} has no code"
                    assert 'balance' in receiver_v, \
                        f"Receiver {receiver_k} has no balance"
                tests[k] = test

    with open(f"{OUTPUT_FILE}.json", 'w') as fout:
        json.dump(tests, fout, indent=2)

_create_sh_file(tests)
