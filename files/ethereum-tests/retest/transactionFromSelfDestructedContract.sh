# PRV_KEY for master sender 0xaC0E99610842347F229d7D8b3fc75cd46e4a0E75
PRV_KEY=3e2dd4afb7cba7bc92dd241a800055766a78d0b20fcbe1be6986571816eddd7c
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test transactionFromSelfDestructedContract (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/transactionFromSelfDestructedContractFiller.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[transactionFromSelfDestructedContract] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xaaCfD3f52a97DFA7d0849AD1cC34bC2537D87861) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xaaCfD3f52a97DFA7d0849AD1cC34bC2537D87861 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+9995000000))
echo "[transactionFromSelfDestructedContract] Funding sender 0x7Ae27A42774a1f034ac7EDB93D23Cb5a662017d5(remapped to 0xce7B9D0A85db3f0EE117cE52e19e838feA08F135) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xce7B9D0A85db3f0EE117cE52e19e838feA08F135 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+9990000000))
echo "[transactionFromSelfDestructedContract] Funding sender 0xfebc70C40FadB14d796F1d499b3f247e12FBbd94(remapped to 0x38A6bD377c7171cf43631350065e66Ef427A7a67) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x38A6bD377c7171cf43631350065e66Ef427A7a67 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transactionFromSelfDestructedContract] Creating receiver 0xfebc70c40fadb14d796f1d499b3f247e12fbbd94 with code and balance 10000000000..."
ADDR_FEBC70C40FADB14D796F1D499B3F247E12FBBD94=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 10000000000 --create 6300000016601260003963000000166000F3737ae27a42774a1f034ac7edb93d23cb5a662017d5ff | jq -r .contractAddress)
echo $ADDR_FEBC70C40FADB14D796F1D499B3F247E12FBBD94

echo "[transactionFromSelfDestructedContract] Processing transaction number 1119 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xaaCfD3f52a97DFA7d0849AD1cC34bC2537D87861) to 0xfebc70c40fadb14d796f1d499b3f247e12fbbd94"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 460258ed60e4a8410af2c1ae3ef44baab7c968d3e11b626e5702ee49c88dbb08 --timeout 20 --value 0 $ADDR_FEBC70C40FADB14D796F1D499B3F247E12FBBD94 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transactionFromSelfDestructedContract] Processing transaction number 1120 from 0x7Ae27A42774a1f034ac7EDB93D23Cb5a662017d5(remapped to 0xce7B9D0A85db3f0EE117cE52e19e838feA08F135) to 0xfebc70c40fadb14d796f1d499b3f247e12fbbd94"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 9a35445f75da6210c61230aaed919fac902b06cab0c9dd8227275aaa8c747479 --timeout 20 --value 9995000000 $ADDR_FEBC70C40FADB14D796F1D499B3F247E12FBBD94 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transactionFromSelfDestructedContract] Processing transaction number 1121 from 0xfebc70C40FadB14d796F1d499b3f247e12FBbd94(remapped to 0x38A6bD377c7171cf43631350065e66Ef427A7a67) to 0xd0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cbd170199b9623c8b56d953cc21e3742c3be917be513df2af32f5c9743aeed0d --timeout 20 --value 9990000000 0xd0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

