# PRV_KEY for master sender 0xca4ce3442B0cE5359b4b7e901C896f055c9cC43A
PRV_KEY=6c70159cd8175c1ff1d9f339386bf69a5350bb23b02d53fa7645910b94b8df20
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test initialVal (src/BlockchainTestsFiller/TransitionTests/bcBerlinToLondon/initialValFiller.yml)"

AMOUNT=$((2*150000*18*$GAS_PRICE+0))
echo "[initialVal] Funding sender 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xC7Ff42F5da457fCc7f596C30fc31a000fd4f009e) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xC7Ff42F5da457fCc7f596C30fc31a000fd4f009e | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[initialVal] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xFFd943c9B11BF4C5Aef0B00Ad906238F01e1b094) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xFFd943c9B11BF4C5Aef0B00Ad906238F01e1b094 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[initialVal] Funding sender 0xe2AFf99a29fADcd427b47b514b42ee5394913A01(remapped to 0x7b8e0A1D6D7127e094632DE9802f52769308Ca2E) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x7b8e0A1D6D7127e094632DE9802f52769308Ca2E | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[initialVal] Funding sender 0x6c5F5b28B10d021bf947e626Bf4565C8957162B4(remapped to 0x4c9DbF4F3f1328426c717D8227EC00CB15e6F6Dd) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x4c9DbF4F3f1328426c717D8227EC00CB15e6F6Dd | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[initialVal] Funding sender 0x3D0fE89106005C4Dfe13b1DfdDFa6c012F0FbC45(remapped to 0x5d7566f522990F76a3a5881AefAE533A7b570b17) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x5d7566f522990F76a3a5881AefAE533A7b570b17 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccc with code and balance 0..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000020601260003963000000206000F33a600435554860016004350155483a0360026004350155456003600435015500 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

echo "[initialVal] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccd with code and balance 0..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000000e6012600039630000000e6000F33a60043555456003600435015500 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD

echo "[initialVal] Processing transaction number 1787 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xC7Ff42F5da457fCc7f596C30fc31a000fd4f009e) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b48f55b0eb271a9975446c63c144e68c501a02aa05c2020a6f6fcf0cb7231c30 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD 693c61390000000000000000000000000000000000000000000000000000000000003000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1788 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xC7Ff42F5da457fCc7f596C30fc31a000fd4f009e) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b48f55b0eb271a9975446c63c144e68c501a02aa05c2020a6f6fcf0cb7231c30 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000004000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1789 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xC7Ff42F5da457fCc7f596C30fc31a000fd4f009e) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b48f55b0eb271a9975446c63c144e68c501a02aa05c2020a6f6fcf0cb7231c30 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD 693c61390000000000000000000000000000000000000000000000000000000000004010 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1790 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xC7Ff42F5da457fCc7f596C30fc31a000fd4f009e) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b48f55b0eb271a9975446c63c144e68c501a02aa05c2020a6f6fcf0cb7231c30 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD 693c61390000000000000000000000000000000000000000000000000000000000004020 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1791 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xFFd943c9B11BF4C5Aef0B00Ad906238F01e1b094) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 5736399c5d8be643d3b57642db82b33415f4613f969c3d9e4fbb9efd424b7910 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD 693c61390000000000000000000000000000000000000000000000000000000000004030 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1792 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xFFd943c9B11BF4C5Aef0B00Ad906238F01e1b094) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 5736399c5d8be643d3b57642db82b33415f4613f969c3d9e4fbb9efd424b7910 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD 693c61390000000000000000000000000000000000000000000000000000000000004030 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1793 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xC7Ff42F5da457fCc7f596C30fc31a000fd4f009e) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b48f55b0eb271a9975446c63c144e68c501a02aa05c2020a6f6fcf0cb7231c30 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000005000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1794 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xC7Ff42F5da457fCc7f596C30fc31a000fd4f009e) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b48f55b0eb271a9975446c63c144e68c501a02aa05c2020a6f6fcf0cb7231c30 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000005010 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1795 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xC7Ff42F5da457fCc7f596C30fc31a000fd4f009e) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b48f55b0eb271a9975446c63c144e68c501a02aa05c2020a6f6fcf0cb7231c30 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000005020 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1796 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xC7Ff42F5da457fCc7f596C30fc31a000fd4f009e) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b48f55b0eb271a9975446c63c144e68c501a02aa05c2020a6f6fcf0cb7231c30 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000005030 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1797 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xC7Ff42F5da457fCc7f596C30fc31a000fd4f009e) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b48f55b0eb271a9975446c63c144e68c501a02aa05c2020a6f6fcf0cb7231c30 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000006000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1798 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xC7Ff42F5da457fCc7f596C30fc31a000fd4f009e) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b48f55b0eb271a9975446c63c144e68c501a02aa05c2020a6f6fcf0cb7231c30 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000006010 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1799 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xC7Ff42F5da457fCc7f596C30fc31a000fd4f009e) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b48f55b0eb271a9975446c63c144e68c501a02aa05c2020a6f6fcf0cb7231c30 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000006020 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1800 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xC7Ff42F5da457fCc7f596C30fc31a000fd4f009e) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b48f55b0eb271a9975446c63c144e68c501a02aa05c2020a6f6fcf0cb7231c30 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000006030 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1801 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xC7Ff42F5da457fCc7f596C30fc31a000fd4f009e) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b48f55b0eb271a9975446c63c144e68c501a02aa05c2020a6f6fcf0cb7231c30 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000006040 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1802 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xC7Ff42F5da457fCc7f596C30fc31a000fd4f009e) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b48f55b0eb271a9975446c63c144e68c501a02aa05c2020a6f6fcf0cb7231c30 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000006050 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1803 from 0xe2AFf99a29fADcd427b47b514b42ee5394913A01(remapped to 0x7b8e0A1D6D7127e094632DE9802f52769308Ca2E) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f4d847d46774c8cf0f531ef12b099c4f5e8788b9cd434885b05097613950e6d3 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000006060 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1804 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xC7Ff42F5da457fCc7f596C30fc31a000fd4f009e) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b48f55b0eb271a9975446c63c144e68c501a02aa05c2020a6f6fcf0cb7231c30 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000006070 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1805 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xC7Ff42F5da457fCc7f596C30fc31a000fd4f009e) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b48f55b0eb271a9975446c63c144e68c501a02aa05c2020a6f6fcf0cb7231c30 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000006080 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1806 from 0x6c5F5b28B10d021bf947e626Bf4565C8957162B4(remapped to 0x4c9DbF4F3f1328426c717D8227EC00CB15e6F6Dd) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 76427218db681d2aaf773c83011c7bf6a9955e3f31e0c9195b07f442c537c66c --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000006090 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1807 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xC7Ff42F5da457fCc7f596C30fc31a000fd4f009e) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b48f55b0eb271a9975446c63c144e68c501a02aa05c2020a6f6fcf0cb7231c30 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c613900000000000000000000000000000000000000000000000000000000000060a0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1808 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xC7Ff42F5da457fCc7f596C30fc31a000fd4f009e) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b48f55b0eb271a9975446c63c144e68c501a02aa05c2020a6f6fcf0cb7231c30 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c613900000000000000000000000000000000000000000000000000000000000060b0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[initialVal] Processing transaction number 1809 from 0x3D0fE89106005C4Dfe13b1DfdDFa6c012F0FbC45(remapped to 0x5d7566f522990F76a3a5881AefAE533A7b570b17) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 237056898a903b516ed8c2aade36e3b90c7e3b35cfa7df60a589c049a164bd69 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c613900000000000000000000000000000000000000000000000000000000000060c0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

