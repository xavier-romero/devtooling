# PRV_KEY for master sender 0x308d72bE4AE83e7e3058fd86fF52fC407216a0F4
PRV_KEY=2b9f7ce1772095ddce6efabd48422afef81e804fb2a6a0c9efba05059626de43
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test transactionFromSelfDestructedContract (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/transactionFromSelfDestructedContractFiller.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[transactionFromSelfDestructedContract] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x715D10409D8512daD46172F11430d590345e3520) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x715D10409D8512daD46172F11430d590345e3520 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+9995000000))
echo "[transactionFromSelfDestructedContract] Funding sender 0x7Ae27A42774a1f034ac7EDB93D23Cb5a662017d5(remapped to 0x3E928aC550fF14e15438A8801e72848FcAf6526a) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x3E928aC550fF14e15438A8801e72848FcAf6526a | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+9990000000))
echo "[transactionFromSelfDestructedContract] Funding sender 0xfebc70C40FadB14d796F1d499b3f247e12FBbd94(remapped to 0x8DC5A2DbE9AC0A80D24383E0821435C06D88ebc5) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x8DC5A2DbE9AC0A80D24383E0821435C06D88ebc5 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transactionFromSelfDestructedContract] Creating receiver 0xfebc70c40fadb14d796f1d499b3f247e12fbbd94 with code and balance 10000000000..."
ADDR_FEBC70C40FADB14D796F1D499B3F247E12FBBD94=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 10000000000 --create 6300000016601260003963000000166000F3737ae27a42774a1f034ac7edb93d23cb5a662017d5ff | jq -r .contractAddress)
echo $ADDR_FEBC70C40FADB14D796F1D499B3F247E12FBBD94

echo "[transactionFromSelfDestructedContract] Processing transaction number 1119 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x715D10409D8512daD46172F11430d590345e3520) to 0xfebc70c40fadb14d796f1d499b3f247e12fbbd94"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key af920d980bd24a22137216897e50acb4d77826499476c267111a403f8dff0bb2 --timeout 20 --value 0 $ADDR_FEBC70C40FADB14D796F1D499B3F247E12FBBD94 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transactionFromSelfDestructedContract] Processing transaction number 1120 from 0x7Ae27A42774a1f034ac7EDB93D23Cb5a662017d5(remapped to 0x3E928aC550fF14e15438A8801e72848FcAf6526a) to 0xfebc70c40fadb14d796f1d499b3f247e12fbbd94"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c38b87bf6177145cb7cf1116f01aacc8f279d585c9871de60f045f1a47fb221d --timeout 20 --value 9995000000 $ADDR_FEBC70C40FADB14D796F1D499B3F247E12FBBD94 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transactionFromSelfDestructedContract] Processing transaction number 1121 from 0xfebc70C40FadB14d796F1d499b3f247e12FBbd94(remapped to 0x8DC5A2DbE9AC0A80D24383E0821435C06D88ebc5) to 0xd0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 8bc69d5445a6a583556345deed46a3c4932ec11f19552e65a852fb2e3d2e0ea5 --timeout 20 --value 9990000000 0xd0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

