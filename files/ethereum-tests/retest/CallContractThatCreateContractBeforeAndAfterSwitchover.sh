# PRV_KEY for master sender 0xD2dA717603c1939FC605143790028BB8fc0C8054
PRV_KEY=a8621a92b46ba0d97433bb79af34c3faa326a9ce196ee43e838978ab44287eb7
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test CallContractThatCreateContractBeforeAndAfterSwitchover (src/BlockchainTestsFiller/TransitionTests/bcFrontierToHomestead/CallContractThatCreateContractBeforeAndAfterSwitchoverFiller.json)"

AMOUNT=$((2*150000*5*$GAS_PRICE+50))
echo "[CallContractThatCreateContractBeforeAndAfterSwitchover] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x71374D29B1405C6Ba581965aD2D070Ed28eFe274) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x71374D29B1405C6Ba581965aD2D070Ed28eFe274 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[CallContractThatCreateContractBeforeAndAfterSwitchover] Creating receiver 0x1000000000000000000000000000000000000001 with code and balance 10000000000..."
ADDR_1000000000000000000000000000000000000001=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 10000000000 --create 6300000017601260003963000000176000F3446001555a60025560206000600039602060006000f000 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000001

echo "[CallContractThatCreateContractBeforeAndAfterSwitchover] Processing transaction number 879 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x71374D29B1405C6Ba581965aD2D070Ed28eFe274) to 0x1000000000000000000000000000000000000001"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b009e8a037cb6469de357118f393193f1cbacd15ee8472794e6958a23aaec2df --timeout 20 --value 10 $ADDR_1000000000000000000000000000000000000001 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[CallContractThatCreateContractBeforeAndAfterSwitchover] Processing transaction number 880 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x71374D29B1405C6Ba581965aD2D070Ed28eFe274) to None"...
echo "[CallContractThatCreateContractBeforeAndAfterSwitchover] Processing transaction number 880 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x71374D29B1405C6Ba581965aD2D070Ed28eFe274) to None"...
echo "[CallContractThatCreateContractBeforeAndAfterSwitchover] Processing transaction number 880 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x71374D29B1405C6Ba581965aD2D070Ed28eFe274) to None"...
echo "[CallContractThatCreateContractBeforeAndAfterSwitchover] Processing transaction number 880 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x71374D29B1405C6Ba581965aD2D070Ed28eFe274) to 0x1000000000000000000000000000000000000001"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b009e8a037cb6469de357118f393193f1cbacd15ee8472794e6958a23aaec2df --timeout 20 --value 10 $ADDR_1000000000000000000000000000000000000001 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

