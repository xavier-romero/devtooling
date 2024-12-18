# PRV_KEY for master sender 0x330a5FbA492523A2017a7E7e44156E9Aa6E226B1
PRV_KEY=53b7b62db63cb0366634c93097cfb7b4407b125188354f48f67f5819819c21fe
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test wrongDifficulty (src/BlockchainTestsFiller/InvalidBlocks/bcInvalidHeaderTest/wrongDifficultyFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+5000))
echo "[wrongDifficulty] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xfB24c724d54F71cA43EC20D352a895E881A3B4a6) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xfB24c724d54F71cA43EC20D352a895E881A3B4a6 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[wrongDifficulty] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[wrongDifficulty] Processing transaction number 268 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xfB24c724d54F71cA43EC20D352a895E881A3B4a6) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 5cd3769ebf9e21bf77b6917ce0e05bbed962ed08f36a4e2219fbf4bd06a3bdd4 --timeout 20 --value 5000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

