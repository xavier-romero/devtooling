# PRV_KEY for master sender 0xA96d29D8f6324fC140A19FC4Ef7C90b8a14dea3b
PRV_KEY=8e13835cf76f1efb12bab3ae342aee6d081f04df291c127084aeb0ca2657ddcc
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test initialVal (src/BlockchainTestsFiller/TransitionTests/bcBerlinToLondon/initialValFiller.yml)"

AMOUNT=$((2*150000*18*$GAS_PRICE+0))
echo "[initialVal] Funding sender 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x88f6406a6811b6B7573369Efe7BDE7ed8fa72FDc) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x88f6406a6811b6B7573369Efe7BDE7ed8fa72FDc | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[initialVal] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xf9EfBF3Ac505A5CC1fF41F01c7581a52BC8F0f39) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xf9EfBF3Ac505A5CC1fF41F01c7581a52BC8F0f39 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[initialVal] Funding sender 0xe2AFf99a29fADcd427b47b514b42ee5394913A01(remapped to 0xDE828cC561F4586F37072C88e47650cfD44337f1) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xDE828cC561F4586F37072C88e47650cfD44337f1 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[initialVal] Funding sender 0x6c5F5b28B10d021bf947e626Bf4565C8957162B4(remapped to 0xff20ded4DA28F3de35FdC5F2595714093cC6f796) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xff20ded4DA28F3de35FdC5F2595714093cC6f796 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[initialVal] Funding sender 0x3D0fE89106005C4Dfe13b1DfdDFa6c012F0FbC45(remapped to 0x1a5b3CA0A2fA289b25ec1e2A1e5c2AC5be463a25) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x1a5b3CA0A2fA289b25ec1e2A1e5c2AC5be463a25 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccc with code and balance 0..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000020601260003963000000206000F33a600435554860016004350155483a0360026004350155456003600435015500 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

echo "[initialVal] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccd with code and balance 0..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000000e6012600039630000000e6000F33a60043555456003600435015500 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD

echo "[initialVal] Processing transaction number 1787 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x88f6406a6811b6B7573369Efe7BDE7ed8fa72FDc) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f9d0bc2f2cb94ae0f943a4ff9c6aeb51cc05824d699fd88face9e9a7a336f342 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD 693c61390000000000000000000000000000000000000000000000000000000000003000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1788 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x88f6406a6811b6B7573369Efe7BDE7ed8fa72FDc) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f9d0bc2f2cb94ae0f943a4ff9c6aeb51cc05824d699fd88face9e9a7a336f342 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000004000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1789 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x88f6406a6811b6B7573369Efe7BDE7ed8fa72FDc) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f9d0bc2f2cb94ae0f943a4ff9c6aeb51cc05824d699fd88face9e9a7a336f342 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD 693c61390000000000000000000000000000000000000000000000000000000000004010 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1790 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x88f6406a6811b6B7573369Efe7BDE7ed8fa72FDc) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f9d0bc2f2cb94ae0f943a4ff9c6aeb51cc05824d699fd88face9e9a7a336f342 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD 693c61390000000000000000000000000000000000000000000000000000000000004020 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1791 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xf9EfBF3Ac505A5CC1fF41F01c7581a52BC8F0f39) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e3059b943ac73b600e15e0453d29b83e1e1c58c779b85371f679f9608a970545 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD 693c61390000000000000000000000000000000000000000000000000000000000004030 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1792 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xf9EfBF3Ac505A5CC1fF41F01c7581a52BC8F0f39) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e3059b943ac73b600e15e0453d29b83e1e1c58c779b85371f679f9608a970545 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD 693c61390000000000000000000000000000000000000000000000000000000000004030 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1793 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x88f6406a6811b6B7573369Efe7BDE7ed8fa72FDc) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f9d0bc2f2cb94ae0f943a4ff9c6aeb51cc05824d699fd88face9e9a7a336f342 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000005000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1794 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x88f6406a6811b6B7573369Efe7BDE7ed8fa72FDc) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f9d0bc2f2cb94ae0f943a4ff9c6aeb51cc05824d699fd88face9e9a7a336f342 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000005010 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1795 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x88f6406a6811b6B7573369Efe7BDE7ed8fa72FDc) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f9d0bc2f2cb94ae0f943a4ff9c6aeb51cc05824d699fd88face9e9a7a336f342 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000005020 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1796 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x88f6406a6811b6B7573369Efe7BDE7ed8fa72FDc) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f9d0bc2f2cb94ae0f943a4ff9c6aeb51cc05824d699fd88face9e9a7a336f342 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000005030 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1797 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x88f6406a6811b6B7573369Efe7BDE7ed8fa72FDc) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f9d0bc2f2cb94ae0f943a4ff9c6aeb51cc05824d699fd88face9e9a7a336f342 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000006000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1798 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x88f6406a6811b6B7573369Efe7BDE7ed8fa72FDc) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f9d0bc2f2cb94ae0f943a4ff9c6aeb51cc05824d699fd88face9e9a7a336f342 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000006010 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1799 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x88f6406a6811b6B7573369Efe7BDE7ed8fa72FDc) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f9d0bc2f2cb94ae0f943a4ff9c6aeb51cc05824d699fd88face9e9a7a336f342 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000006020 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1800 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x88f6406a6811b6B7573369Efe7BDE7ed8fa72FDc) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f9d0bc2f2cb94ae0f943a4ff9c6aeb51cc05824d699fd88face9e9a7a336f342 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000006030 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1801 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x88f6406a6811b6B7573369Efe7BDE7ed8fa72FDc) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f9d0bc2f2cb94ae0f943a4ff9c6aeb51cc05824d699fd88face9e9a7a336f342 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000006040 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1802 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x88f6406a6811b6B7573369Efe7BDE7ed8fa72FDc) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f9d0bc2f2cb94ae0f943a4ff9c6aeb51cc05824d699fd88face9e9a7a336f342 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000006050 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1803 from 0xe2AFf99a29fADcd427b47b514b42ee5394913A01(remapped to 0xDE828cC561F4586F37072C88e47650cfD44337f1) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 5dc809b31fd0b81fb63706809d49e135ed20411c10a1278dd3b3c543778cb050 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000006060 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1804 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x88f6406a6811b6B7573369Efe7BDE7ed8fa72FDc) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f9d0bc2f2cb94ae0f943a4ff9c6aeb51cc05824d699fd88face9e9a7a336f342 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000006070 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1805 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x88f6406a6811b6B7573369Efe7BDE7ed8fa72FDc) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f9d0bc2f2cb94ae0f943a4ff9c6aeb51cc05824d699fd88face9e9a7a336f342 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000006080 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1806 from 0x6c5F5b28B10d021bf947e626Bf4565C8957162B4(remapped to 0xff20ded4DA28F3de35FdC5F2595714093cC6f796) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 5d785c769db05f63bc0d8f3dd552944dd24314453a0533df97e265883c6ff5ba --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000006090 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1807 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x88f6406a6811b6B7573369Efe7BDE7ed8fa72FDc) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f9d0bc2f2cb94ae0f943a4ff9c6aeb51cc05824d699fd88face9e9a7a336f342 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c613900000000000000000000000000000000000000000000000000000000000060a0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1808 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x88f6406a6811b6B7573369Efe7BDE7ed8fa72FDc) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f9d0bc2f2cb94ae0f943a4ff9c6aeb51cc05824d699fd88face9e9a7a336f342 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c613900000000000000000000000000000000000000000000000000000000000060b0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1809 from 0x3D0fE89106005C4Dfe13b1DfdDFa6c012F0FbC45(remapped to 0x1a5b3CA0A2fA289b25ec1e2A1e5c2AC5be463a25) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 41c45c7aebdb9b37f1b51014d92fc73e3617919ee988c5fdf8b66434d4a2274d --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c613900000000000000000000000000000000000000000000000000000000000060c0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

