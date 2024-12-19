# PRV_KEY for master sender 0x6243A20A636aAd1A6f842F778796927F2c582F85
PRV_KEY=683d485262e979555d5bb071f8c6286757649cf066ccc2b008925aa9ac950b99
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test BlockGasLimit2p63m1 (src/BlockchainTestsFiller/ValidBlocks/bcBlockGasLimitTest/BlockGasLimit2p63m1Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+10))
echo "[BlockGasLimit2p63m1] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xCE42a4927FbA27c680371fa7f7f2d9465F448948) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xCE42a4927FbA27c680371fa7f7f2d9465F448948 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[BlockGasLimit2p63m1] Processing transaction number 791 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xCE42a4927FbA27c680371fa7f7f2d9465F448948) to 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 78c3b078d1c26938b3334025c85ae80a2ae1e5ab8c09e747d146bb6b0a6b3f5a --timeout 20 --value 10 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

