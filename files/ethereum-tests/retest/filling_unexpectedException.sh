# PRV_KEY for master sender 0x9e979D43AFa31727EdF57092eE1ee0C8ee572B34
PRV_KEY=a68fc8eaac0ff7759ac5021d6861bbf614bcb1a9e06c9250b51c88fbf51e28b5
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test filling_unexpectedException (src/BlockchainTestsFiller/InvalidBlocks/bcExpectSection/filling_unexpectedExceptionFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+10))
echo "[filling_unexpectedException] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5c74683B0F40D7Dc016aAa5c45b86097b34886B8) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x5c74683B0F40D7Dc016aAa5c45b86097b34886B8 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[filling_unexpectedException] Processing transaction number 114 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5c74683B0F40D7Dc016aAa5c45b86097b34886B8) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f2deafa0fd98d345cc829e73dc6dde2d95407db6f98ef0e83797202df54ccbca --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

