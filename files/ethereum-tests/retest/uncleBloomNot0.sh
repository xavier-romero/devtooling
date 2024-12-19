# PRV_KEY for master sender 0xe801Ad3BFbE062C505EAAE4A9d660BF596fFAAaD
PRV_KEY=1168b2ccd2754936b669aeb5f5d5437bb00e991d9e8eb77046fbff00b3d1da5a
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test uncleBloomNot0 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleSpecialTests/uncleBloomNot0Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[uncleBloomNot0] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x3DC7b2486685815e4dea397a8BAf793dAA32E970) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x3DC7b2486685815e4dea397a8BAf793dAA32E970 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[uncleBloomNot0] Processing transaction number 1 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x3DC7b2486685815e4dea397a8BAf793dAA32E970) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 12350e045ca33e70b95ef86e29cf5f8f007ff8f94fb6b672d7c629acbcafd852 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[uncleBloomNot0] Processing transaction number 2 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x3DC7b2486685815e4dea397a8BAf793dAA32E970) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 12350e045ca33e70b95ef86e29cf5f8f007ff8f94fb6b672d7c629acbcafd852 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[uncleBloomNot0] Processing transaction number 3 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x3DC7b2486685815e4dea397a8BAf793dAA32E970) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 12350e045ca33e70b95ef86e29cf5f8f007ff8f94fb6b672d7c629acbcafd852 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

