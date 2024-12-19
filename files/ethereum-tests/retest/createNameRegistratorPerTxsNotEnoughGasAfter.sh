# PRV_KEY for master sender 0x4e6fA6b6D1a1e008332A4fdDe62563B75C24A814
PRV_KEY=cfdc686db97a72823d6f2a37ce1bb7b5b52150109725d1ea93cfdbdcb9a146dd
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test createNameRegistratorPerTxsNotEnoughGasAfter (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/createNameRegistratorPerTxsNotEnoughGasAfterFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[createNameRegistratorPerTxsNotEnoughGasAfter] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1BAd78168Aa0ce95cA3fE52F0831409AeE661010) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x1BAd78168Aa0ce95cA3fE52F0831409AeE661010 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[createNameRegistratorPerTxsNotEnoughGasAfter] Processing transaction number 135 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1BAd78168Aa0ce95cA3fE52F0831409AeE661010) to None"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 74cf7bdd692d05503f90730e5106bfa3e012f9316261ea1f719704b1639ca7f5 --timeout 20 --value 100000 --create 0x6001600155601080600c6000396000f3006000355415600957005b60203560003555 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

