# PRV_KEY for master sender 0xeA8F8326405384Dd31331EeE1d8ECf21eCbC2Bd3
PRV_KEY=e9cc3578c3ef6280596f7b6e440653fef14f8a7025694bbe6bfe259bd4900928
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test result_ShanghaiEnvConvertion (src/BlockchainTestsFiller/InvalidBlocks/bcExpectSection/result_ShanghaiEnvConvertionFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[result_ShanghaiEnvConvertion] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xdA5Ca8facaC3a8Be22DDa3f1Fe908f50b47AB60A) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xdA5Ca8facaC3a8Be22DDa3f1Fe908f50b47AB60A | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[result_ShanghaiEnvConvertion] Processing transaction number 120 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xdA5Ca8facaC3a8Be22DDa3f1Fe908f50b47AB60A) to None"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key a511da3d869c6479e96ac935248160c0541f39ffbb644b9c74c681b28ac2c5ff --timeout 20 --value 0 --create 0x600c60015560068060126000396000f300fe600f60005500 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

