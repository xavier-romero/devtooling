# PRV_KEY for master sender 0x00679BBBCCfaFaE5e7339a4F78061fB98a756686
PRV_KEY=3b406b31b1986f66a00d888d4c470ae86237f2bc19322bd978c349d24d543d08
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test uncleWithSameBlockNumber (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/uncleWithSameBlockNumberFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[uncleWithSameBlockNumber] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0Ff063F14593752f273aa7CC8d06f7Dd1EefF8A7) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x0Ff063F14593752f273aa7CC8d06f7Dd1EefF8A7 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[uncleWithSameBlockNumber] Processing transaction number 181 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0Ff063F14593752f273aa7CC8d06f7Dd1EefF8A7) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 3d266687f45e397dae7540d8011e48bf6c997d1f869794e0db28b6d4419fe01e --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[uncleWithSameBlockNumber] Processing transaction number 182 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0Ff063F14593752f273aa7CC8d06f7Dd1EefF8A7) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 3d266687f45e397dae7540d8011e48bf6c997d1f869794e0db28b6d4419fe01e --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[uncleWithSameBlockNumber] Processing transaction number 183 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0Ff063F14593752f273aa7CC8d06f7Dd1EefF8A7) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 3d266687f45e397dae7540d8011e48bf6c997d1f869794e0db28b6d4419fe01e --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

