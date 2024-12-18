# PRV_KEY for master sender 0x985A457C4Ac8CcCdcbA147164384C7092B5C1455
PRV_KEY=3871fd15685ee7a0b883acae38b450ebc1566c0a2bb1ee92c2ddd8f397d00291
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test timestampPerBlock (src/BlockchainTestsFiller/InvalidBlocks/bcEIP3675/timestampPerBlockFiller.yml)"

AMOUNT=$((2*150000*6*$GAS_PRICE+0))
echo "[timestampPerBlock] Funding sender 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xe6aC6096B56dE3E9Eeb72CE7c02089A6dEF66a1F) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xe6aC6096B56dE3E9Eeb72CE7c02089A6dEF66a1F | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timestampPerBlock] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccc with code and balance 1099511627776..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 6300000003601260003963000000036000F3424355 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

echo "[timestampPerBlock] Processing transaction number 1125 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xe6aC6096B56dE3E9Eeb72CE7c02089A6dEF66a1F) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 57beb1712da2968fefddec845f395aafbc11371848aadebea8dad2685c22a679 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timestampPerBlock] Processing transaction number 1126 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xe6aC6096B56dE3E9Eeb72CE7c02089A6dEF66a1F) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 57beb1712da2968fefddec845f395aafbc11371848aadebea8dad2685c22a679 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timestampPerBlock] Processing transaction number 1127 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xe6aC6096B56dE3E9Eeb72CE7c02089A6dEF66a1F) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 57beb1712da2968fefddec845f395aafbc11371848aadebea8dad2685c22a679 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timestampPerBlock] Processing transaction number 1128 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xe6aC6096B56dE3E9Eeb72CE7c02089A6dEF66a1F) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 57beb1712da2968fefddec845f395aafbc11371848aadebea8dad2685c22a679 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timestampPerBlock] Processing transaction number 1129 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xe6aC6096B56dE3E9Eeb72CE7c02089A6dEF66a1F) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 57beb1712da2968fefddec845f395aafbc11371848aadebea8dad2685c22a679 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timestampPerBlock] Processing transaction number 1130 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xe6aC6096B56dE3E9Eeb72CE7c02089A6dEF66a1F) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 57beb1712da2968fefddec845f395aafbc11371848aadebea8dad2685c22a679 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

