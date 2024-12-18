# PRV_KEY for master sender 0xbACFF5dAB605Dd4c3A6cc6a7d31698f716ea1682
PRV_KEY=36ccdef872d075641c712444075bcf3a2fe18bef43bdc311621885c368900dd9
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test incorrectUncleNumber0 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/incorrectUncleNumber0Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[incorrectUncleNumber0] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6B25a54De096E5Ea2C78e80C2D1943B120A38303) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x6B25a54De096E5Ea2C78e80C2D1943B120A38303 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleNumber0] Processing transaction number 106 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6B25a54De096E5Ea2C78e80C2D1943B120A38303) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key bf771d30fe60d004fd10493028d6c22a4081be8ea994ba804aef580733b64533 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleNumber0] Processing transaction number 107 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6B25a54De096E5Ea2C78e80C2D1943B120A38303) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key bf771d30fe60d004fd10493028d6c22a4081be8ea994ba804aef580733b64533 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleNumber0] Processing transaction number 108 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6B25a54De096E5Ea2C78e80C2D1943B120A38303) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key bf771d30fe60d004fd10493028d6c22a4081be8ea994ba804aef580733b64533 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

