# PRV_KEY for master sender 0xF629c85EB65943F9004C80D10E11A7DF6B405104
PRV_KEY=6af7fc18bc201b3bc52b33a9f1a27f2c387e2ba96e54376fa6c3eabe50f725b0
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test transFail (src/BlockchainTestsFiller/InvalidBlocks/bcEIP1559/transFailFiller.yml)"

AMOUNT=$((2*150000*6*$GAS_PRICE+0))
echo "[transFail] Funding sender 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x6d4eF01e8523032152663520ef4e49b75e41C861) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x6d4eF01e8523032152663520ef4e49b75e41C861 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*6*$GAS_PRICE+0))
echo "[transFail] Funding sender 0xe2AFf99a29fADcd427b47b514b42ee5394913A01(remapped to 0x2Cd074D8B4B8F1ADc65C3336ef18Bdc695C08E28) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x2Cd074D8B4B8F1ADc65C3336ef18Bdc695C08E28 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[transFail] Funding sender 0x6c5F5b28B10d021bf947e626Bf4565C8957162B4(remapped to 0x74099c3B2E7B089F16796a92bc668D18720884A1) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x74099c3B2E7B089F16796a92bc668D18720884A1 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[transFail] Funding sender 0x3D0fE89106005C4Dfe13b1DfdDFa6c012F0FbC45(remapped to 0x33A3F71020d18655dfa54b909890a47228B23E64) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x33A3F71020d18655dfa54b909890a47228B23E64 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[transFail] Funding sender 0x32BcEef44283dba687554010aCd79838aFAc8daf(remapped to 0x33136a83cbAAC50A5c48bCc73060fD53d84de205) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x33136a83cbAAC50A5c48bCc73060fD53d84de205 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[transFail] Funding sender 0x387c92d4D20731FA792c392D81f717f246b59d3f(remapped to 0xf3192b2b6D5D800bBB2d1e658fFf5387c35ED789) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xf3192b2b6D5D800bBB2d1e658fFf5387c35ED789 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[transFail] Funding sender 0xD3e613c808af8C79d0eAc680c97a55252Ed612E4(remapped to 0x1A845fcd5b9D753c2d3fD459E3ddF4f56aF0Af33) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x1A845fcd5b9D753c2d3fD459E3ddF4f56aF0Af33 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccc with code and balance 1099511627776..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 6300000005601260003963000000056000F33a60043555 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

echo "[transFail] Processing transaction number 915 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x6d4eF01e8523032152663520ef4e49b75e41C861) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key acc2a39341d0511b1a24ee0ed32dbbc195d36c32510a5432da5b8a916e3f4309 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000101 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 916 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x6d4eF01e8523032152663520ef4e49b75e41C861) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key acc2a39341d0511b1a24ee0ed32dbbc195d36c32510a5432da5b8a916e3f4309 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000102 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 917 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x6d4eF01e8523032152663520ef4e49b75e41C861) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key acc2a39341d0511b1a24ee0ed32dbbc195d36c32510a5432da5b8a916e3f4309 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000103 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 918 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x6d4eF01e8523032152663520ef4e49b75e41C861) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key acc2a39341d0511b1a24ee0ed32dbbc195d36c32510a5432da5b8a916e3f4309 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000104 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 919 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x6d4eF01e8523032152663520ef4e49b75e41C861) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key acc2a39341d0511b1a24ee0ed32dbbc195d36c32510a5432da5b8a916e3f4309 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000105 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 920 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x6d4eF01e8523032152663520ef4e49b75e41C861) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key acc2a39341d0511b1a24ee0ed32dbbc195d36c32510a5432da5b8a916e3f4309 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000106 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 921 from 0xe2AFf99a29fADcd427b47b514b42ee5394913A01(remapped to 0x2Cd074D8B4B8F1ADc65C3336ef18Bdc695C08E28) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f27aa9c06ee9665133599479331eddc712ce8824a0cce7a79dd1651802dae3ab --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000201 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 922 from 0xe2AFf99a29fADcd427b47b514b42ee5394913A01(remapped to 0x2Cd074D8B4B8F1ADc65C3336ef18Bdc695C08E28) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f27aa9c06ee9665133599479331eddc712ce8824a0cce7a79dd1651802dae3ab --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000202 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 923 from 0xe2AFf99a29fADcd427b47b514b42ee5394913A01(remapped to 0x2Cd074D8B4B8F1ADc65C3336ef18Bdc695C08E28) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f27aa9c06ee9665133599479331eddc712ce8824a0cce7a79dd1651802dae3ab --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000203 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 924 from 0xe2AFf99a29fADcd427b47b514b42ee5394913A01(remapped to 0x2Cd074D8B4B8F1ADc65C3336ef18Bdc695C08E28) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f27aa9c06ee9665133599479331eddc712ce8824a0cce7a79dd1651802dae3ab --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000204 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 925 from 0xe2AFf99a29fADcd427b47b514b42ee5394913A01(remapped to 0x2Cd074D8B4B8F1ADc65C3336ef18Bdc695C08E28) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f27aa9c06ee9665133599479331eddc712ce8824a0cce7a79dd1651802dae3ab --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000205 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 926 from 0xe2AFf99a29fADcd427b47b514b42ee5394913A01(remapped to 0x2Cd074D8B4B8F1ADc65C3336ef18Bdc695C08E28) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f27aa9c06ee9665133599479331eddc712ce8824a0cce7a79dd1651802dae3ab --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000206 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 927 from 0x6c5F5b28B10d021bf947e626Bf4565C8957162B4(remapped to 0x74099c3B2E7B089F16796a92bc668D18720884A1) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 333b62d80007b85b465c81337a45514b751bb201e799e8959708382e5d65d64d --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000301 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 928 from 0x6c5F5b28B10d021bf947e626Bf4565C8957162B4(remapped to 0x74099c3B2E7B089F16796a92bc668D18720884A1) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 333b62d80007b85b465c81337a45514b751bb201e799e8959708382e5d65d64d --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000302 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 929 from 0x3D0fE89106005C4Dfe13b1DfdDFa6c012F0FbC45(remapped to 0x33A3F71020d18655dfa54b909890a47228B23E64) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ed77bc3aa40a38eb48722dad30420f536d0ef05e14cfadbb5ae3b8dc8a983b1f --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000303 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 930 from 0x3D0fE89106005C4Dfe13b1DfdDFa6c012F0FbC45(remapped to 0x33A3F71020d18655dfa54b909890a47228B23E64) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ed77bc3aa40a38eb48722dad30420f536d0ef05e14cfadbb5ae3b8dc8a983b1f --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000304 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 931 from 0x32BcEef44283dba687554010aCd79838aFAc8daf(remapped to 0x33136a83cbAAC50A5c48bCc73060fD53d84de205) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 2731c4df9845b2523662315494a2b6bd0a175d1aa36bb3a8f9ba65e87e973250 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000305 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 932 from 0x387c92d4D20731FA792c392D81f717f246b59d3f(remapped to 0xf3192b2b6D5D800bBB2d1e658fFf5387c35ED789) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 3fab5dd8fd8b023194178f8649986312df6992c5e495dd0ea5fe984b2873219b --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000306 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 933 from 0x387c92d4D20731FA792c392D81f717f246b59d3f(remapped to 0xf3192b2b6D5D800bBB2d1e658fFf5387c35ED789) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 3fab5dd8fd8b023194178f8649986312df6992c5e495dd0ea5fe984b2873219b --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000307 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 934 from 0xD3e613c808af8C79d0eAc680c97a55252Ed612E4(remapped to 0x1A845fcd5b9D753c2d3fD459E3ddF4f56aF0Af33) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b682ed658d7c0f8f233e6ad608406dff3ffded5fb7c2203414f7f4cdcdded244 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000308 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 935 from 0xD3e613c808af8C79d0eAc680c97a55252Ed612E4(remapped to 0x1A845fcd5b9D753c2d3fD459E3ddF4f56aF0Af33) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b682ed658d7c0f8f233e6ad608406dff3ffded5fb7c2203414f7f4cdcdded244 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000309 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

