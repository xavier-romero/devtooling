# PRV_KEY for master sender 0xF10E950E5f5790050fc6846C4Bff92ccBF68C0C4
PRV_KEY=4902d3e5ed227684cc91970a2ca57c1d2f59da72e0daf1874b56cbdd2e1b38c1
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideLast (src/BlockchainTestsFiller/InvalidBlocks/bcBlockGasLimitTest/GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideLastFiller.json)"

AMOUNT=$((2*150000*7*$GAS_PRICE+70))
echo "[GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideLast] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7a4cd30925dC598Ad06363b677e6F95A3aeF15aC) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x7a4cd30925dC598Ad06363b677e6F95A3aeF15aC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideLast] Creating receiver 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b with code and balance 10000000000..."
ADDR_AAAF5374FCE5EDBC8E2A8697C15331677E6EBF0B=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 10000000000 --create 6300000016601260003963000000166000F373a94f5374fce5edbc8e2a8697c15331677e6ebf0bff | jq -r .contractAddress)
echo $ADDR_AAAF5374FCE5EDBC8E2A8697C15331677E6EBF0B

echo "[GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideLast] Processing transaction number 283 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7a4cd30925dC598Ad06363b677e6F95A3aeF15aC) to 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f0f673b0a02e5b5f72869448b40e68a3501590093061b937fc27fb28619fa421 --timeout 20 --value 10 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideLast] Processing transaction number 284 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7a4cd30925dC598Ad06363b677e6F95A3aeF15aC) to 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f0f673b0a02e5b5f72869448b40e68a3501590093061b937fc27fb28619fa421 --timeout 20 --value 10 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideLast] Processing transaction number 285 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7a4cd30925dC598Ad06363b677e6F95A3aeF15aC) to 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f0f673b0a02e5b5f72869448b40e68a3501590093061b937fc27fb28619fa421 --timeout 20 --value 10 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideLast] Processing transaction number 286 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7a4cd30925dC598Ad06363b677e6F95A3aeF15aC) to 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f0f673b0a02e5b5f72869448b40e68a3501590093061b937fc27fb28619fa421 --timeout 20 --value 10 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideLast] Processing transaction number 287 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7a4cd30925dC598Ad06363b677e6F95A3aeF15aC) to 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f0f673b0a02e5b5f72869448b40e68a3501590093061b937fc27fb28619fa421 --timeout 20 --value 10 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideLast] Processing transaction number 288 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7a4cd30925dC598Ad06363b677e6F95A3aeF15aC) to 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f0f673b0a02e5b5f72869448b40e68a3501590093061b937fc27fb28619fa421 --timeout 20 --value 10 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideLast] Processing transaction number 289 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7a4cd30925dC598Ad06363b677e6F95A3aeF15aC) to 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f0f673b0a02e5b5f72869448b40e68a3501590093061b937fc27fb28619fa421 --timeout 20 --value 10 $ADDR_AAAF5374FCE5EDBC8E2A8697C15331677E6EBF0B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

