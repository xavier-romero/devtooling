# PRV_KEY for master sender 0xd8Ed17FCB4A1f0C1B846eA7De018F0De14a3284e
PRV_KEY=cffda34e6f76852e0c83527876ce786b6f11d99b80b56af5a3737e6d5803adac
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test filling_wrongAccount (src/BlockchainTestsFiller/InvalidBlocks/bcExpectSection/filling_wrongAccountFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+10))
echo "[filling_wrongAccount] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xa59Ee391723C4E103DfbBF0Ab7708e39003F4Ff7) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xa59Ee391723C4E103DfbBF0Ab7708e39003F4Ff7 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[filling_wrongAccount] Processing transaction number 118 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xa59Ee391723C4E103DfbBF0Ab7708e39003F4Ff7) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 2c0d6fb90706430650184437df54e51e9d6595c7e010c7c45e72061771e0ee86 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

