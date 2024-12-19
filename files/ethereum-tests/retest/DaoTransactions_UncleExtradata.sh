# PRV_KEY for master sender 0x22DAa90655e7745E7176eA416D6120a23EC6378f
PRV_KEY=a8be2cb0c7fb23386a49d04cd043ed7a75c394c19e783d206bca29e0cf9c2aa3
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test DaoTransactions_UncleExtradata (src/BlockchainTestsFiller/TransitionTests/bcHomesteadToDao/DaoTransactions_UncleExtradataFiller.json)"

AMOUNT=$((2*150000*20*$GAS_PRICE+1273))
echo "[DaoTransactions_UncleExtradata] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDb94Ae639597f1d1AfeF12F8A6e3935F58E47493) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xDb94Ae639597f1d1AfeF12F8A6e3935F58E47493 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_UncleExtradata] Creating receiver 0x1000000000000000000000000000000000000007 with code and balance 0..."
ADDR_1000000000000000000000000000000000000007=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000001a6012600039630000001a6000F373807640a13483f8ac783c557fcdf27be11ea4ac7a3160005500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000007

echo "[DaoTransactions_UncleExtradata] Creating receiver 0x1000000000000000000000000000000000000008 with code and balance 0..."
ADDR_1000000000000000000000000000000000000008=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000001a6012600039630000001a6000F373807640a13483f8ac783c557fcdf27be11ea4ac7a3160005500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000008

echo "[DaoTransactions_UncleExtradata] Processing transaction number 817 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDb94Ae639597f1d1AfeF12F8A6e3935F58E47493) to None"...
echo "[DaoTransactions_UncleExtradata] Processing transaction number 817 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDb94Ae639597f1d1AfeF12F8A6e3935F58E47493) to None"...
echo "[DaoTransactions_UncleExtradata] Processing transaction number 817 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDb94Ae639597f1d1AfeF12F8A6e3935F58E47493) to None"...
echo "[DaoTransactions_UncleExtradata] Processing transaction number 817 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDb94Ae639597f1d1AfeF12F8A6e3935F58E47493) to 0x1000000000000000000000000000000000000007"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 89403cf0ac2624a1b9c15a1c2a45f42f02732c13203e5fb24ace9cdc01bd6dc9 --timeout 20 --value 10 $ADDR_1000000000000000000000000000000000000007 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_UncleExtradata] Processing transaction number 818 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDb94Ae639597f1d1AfeF12F8A6e3935F58E47493) to 0x1000000000000000000000000000000000000008"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 89403cf0ac2624a1b9c15a1c2a45f42f02732c13203e5fb24ace9cdc01bd6dc9 --timeout 20 --value 10 $ADDR_1000000000000000000000000000000000000008 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_UncleExtradata] Processing transaction number 819 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDb94Ae639597f1d1AfeF12F8A6e3935F58E47493) to 0x1000000000000000000000000000000000000008"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 89403cf0ac2624a1b9c15a1c2a45f42f02732c13203e5fb24ace9cdc01bd6dc9 --timeout 20 --value 10 $ADDR_1000000000000000000000000000000000000008 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_UncleExtradata] Processing transaction number 820 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDb94Ae639597f1d1AfeF12F8A6e3935F58E47493) to 0x1000000000000000000000000000000000000008"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 89403cf0ac2624a1b9c15a1c2a45f42f02732c13203e5fb24ace9cdc01bd6dc9 --timeout 20 --value 10 $ADDR_1000000000000000000000000000000000000008 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_UncleExtradata] Processing transaction number 821 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDb94Ae639597f1d1AfeF12F8A6e3935F58E47493) to None"...
echo "[DaoTransactions_UncleExtradata] Processing transaction number 821 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDb94Ae639597f1d1AfeF12F8A6e3935F58E47493) to 0x1000000000000000000000000000000000000010"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 89403cf0ac2624a1b9c15a1c2a45f42f02732c13203e5fb24ace9cdc01bd6dc9 --timeout 20 --value 111 0x1000000000000000000000000000000000000010 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_UncleExtradata] Processing transaction number 822 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDb94Ae639597f1d1AfeF12F8A6e3935F58E47493) to None"...
echo "[DaoTransactions_UncleExtradata] Processing transaction number 822 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDb94Ae639597f1d1AfeF12F8A6e3935F58E47493) to 0x1000000000000000000000000000000000000011"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 89403cf0ac2624a1b9c15a1c2a45f42f02732c13203e5fb24ace9cdc01bd6dc9 --timeout 20 --value 10 0x1000000000000000000000000000000000000011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_UncleExtradata] Processing transaction number 823 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDb94Ae639597f1d1AfeF12F8A6e3935F58E47493) to 0x1000000000000000000000000000000000000012"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 89403cf0ac2624a1b9c15a1c2a45f42f02732c13203e5fb24ace9cdc01bd6dc9 --timeout 20 --value 10 0x1000000000000000000000000000000000000012 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_UncleExtradata] Processing transaction number 824 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDb94Ae639597f1d1AfeF12F8A6e3935F58E47493) to 0x1000000000000000000000000000000000000013"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 89403cf0ac2624a1b9c15a1c2a45f42f02732c13203e5fb24ace9cdc01bd6dc9 --timeout 20 --value 10 0x1000000000000000000000000000000000000013 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_UncleExtradata] Processing transaction number 825 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDb94Ae639597f1d1AfeF12F8A6e3935F58E47493) to 0x1000000000000000000000000000000000000014"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 89403cf0ac2624a1b9c15a1c2a45f42f02732c13203e5fb24ace9cdc01bd6dc9 --timeout 20 --value 10 0x1000000000000000000000000000000000000014 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_UncleExtradata] Processing transaction number 826 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDb94Ae639597f1d1AfeF12F8A6e3935F58E47493) to 0x1000000000000000000000000000000000000015"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 89403cf0ac2624a1b9c15a1c2a45f42f02732c13203e5fb24ace9cdc01bd6dc9 --timeout 20 --value 10 0x1000000000000000000000000000000000000015 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_UncleExtradata] Processing transaction number 827 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDb94Ae639597f1d1AfeF12F8A6e3935F58E47493) to 0x1000000000000000000000000000000000000016"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 89403cf0ac2624a1b9c15a1c2a45f42f02732c13203e5fb24ace9cdc01bd6dc9 --timeout 20 --value 10 0x1000000000000000000000000000000000000016 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_UncleExtradata] Processing transaction number 828 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDb94Ae639597f1d1AfeF12F8A6e3935F58E47493) to 0x1000000000000000000000000000000000000017"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 89403cf0ac2624a1b9c15a1c2a45f42f02732c13203e5fb24ace9cdc01bd6dc9 --timeout 20 --value 10 0x1000000000000000000000000000000000000017 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_UncleExtradata] Processing transaction number 829 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDb94Ae639597f1d1AfeF12F8A6e3935F58E47493) to 0x1000000000000000000000000000000000000018"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 89403cf0ac2624a1b9c15a1c2a45f42f02732c13203e5fb24ace9cdc01bd6dc9 --timeout 20 --value 10 0x1000000000000000000000000000000000000018 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_UncleExtradata] Processing transaction number 830 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDb94Ae639597f1d1AfeF12F8A6e3935F58E47493) to 0x1000000000000000000000000000000000000019"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 89403cf0ac2624a1b9c15a1c2a45f42f02732c13203e5fb24ace9cdc01bd6dc9 --timeout 20 --value 10 0x1000000000000000000000000000000000000019 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_UncleExtradata] Processing transaction number 831 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDb94Ae639597f1d1AfeF12F8A6e3935F58E47493) to 0x1000000000000000000000000000000000000020"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 89403cf0ac2624a1b9c15a1c2a45f42f02732c13203e5fb24ace9cdc01bd6dc9 --timeout 20 --value 1000 0x1000000000000000000000000000000000000020 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

