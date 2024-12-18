# PRV_KEY for master sender 0x924c4E6cCd50F8Dd454Bb35b704D6884ca8e64B4
PRV_KEY=a6753d7ab0d7e878b6bc44a72248ed8b6d3686e4c70afbdee301b24cc2ef6a5a
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test filling_wrongStorage (src/BlockchainTestsFiller/InvalidBlocks/bcExpectSection/filling_wrongStorageFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+10))
echo "[filling_wrongStorage] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7114Ae6F44b058e176665C98eF03ac7056C40dE2) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x7114Ae6F44b058e176665C98eF03ac7056C40dE2 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[filling_wrongStorage] Creating receiver 0xa94f5374fce5edbc8e2a8697c15331677e6ebf0b with code and balance 10000000000000..."
ADDR_A94F5374FCE5EDBC8E2A8697C15331677E6EBF0B=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 10000000000000 --create 6022600155 | jq -r .contractAddress)
echo $ADDR_A94F5374FCE5EDBC8E2A8697C15331677E6EBF0B

echo "[filling_wrongStorage] Processing transaction number 116 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7114Ae6F44b058e176665C98eF03ac7056C40dE2) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 0bac095d6e15ccaf94ce447648265787fd9f31ec72b9104b48d5462062208bc1 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

