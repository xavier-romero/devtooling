# PRV_KEY for master sender 0x48Be207588FF1604fd08cC27b3853409426b70e0
PRV_KEY=9b60bfe00fa41ecb350539525fb254bbbccd93637d18475b8ef402ac0ffb3235
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test intrinsic (src/BlockchainTestsFiller/ValidBlocks/bcEIP1559/intrinsicFiller.yml)"

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xE4F039857d0218694dfA7042c2a9ffcBf4D2D568) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xE4F039857d0218694dfA7042c2a9ffcBf4D2D568 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xe2AFf99a29fADcd427b47b514b42ee5394913A01(remapped to 0x2Af70Bca55fB9A5786A45d053BB8929295f9444e) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x2Af70Bca55fB9A5786A45d053BB8929295f9444e | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x6c5F5b28B10d021bf947e626Bf4565C8957162B4(remapped to 0x55996bcD59fe04337091b5284a12409Da34418B8) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x55996bcD59fe04337091b5284a12409Da34418B8 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x3D0fE89106005C4Dfe13b1DfdDFa6c012F0FbC45(remapped to 0x918e60f62Ddc069FfcDFd41acaf8098b62eD9ae7) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x918e60f62Ddc069FfcDFd41acaf8098b62eD9ae7 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x32BcEef44283dba687554010aCd79838aFAc8daf(remapped to 0x7F65aD007c0CB3c9C02f9Cd41F31FFe5aeb9cCD9) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x7F65aD007c0CB3c9C02f9Cd41F31FFe5aeb9cCD9 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x387c92d4D20731FA792c392D81f717f246b59d3f(remapped to 0x49CdcE3e3a1Dd4944c43bd97CdF37D4ffC62A970) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x49CdcE3e3a1Dd4944c43bd97CdF37D4ffC62A970 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xD3e613c808af8C79d0eAc680c97a55252Ed612E4(remapped to 0x0E5c7C8B41D849fb727B513531dB641636a5036e) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x0E5c7C8B41D849fb727B513531dB641636a5036e | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xB0Fc229D18A7F912056a48b19DF7cEb81D5A11ce(remapped to 0xdd3a8CeeD71923eDbD7eF7259803C071B3A04013) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xdd3a8CeeD71923eDbD7eF7259803C071B3A04013 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xB5490DCbdCBE9fDd913BF9b875d49e2B1b1FB134(remapped to 0x3faee69d3bB6ae845CBB1E63824FE7fc5506EFe7) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x3faee69d3bB6ae845CBB1E63824FE7fc5506EFe7 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xD8532747C5719E0e2A7BCaF4F554E280c537fC41(remapped to 0x8cFeA2D235A4Ad0Fa0e0a628Ee947fa426acdd01) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x8cFeA2D235A4Ad0Fa0e0a628Ee947fa426acdd01 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x4C2B54bC284422ac56062dBFf1F8c37D85FACc52(remapped to 0x280A24B502809abb14d3Ff2589B288385A68e026) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x280A24B502809abb14d3Ff2589B288385A68e026 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x0f752cbdef4ef9A5F014bEF8db9824B7Bc4C4FA6(remapped to 0x080e6Ed50AD1e378CB38434664ef0371df2F3C0C) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x080e6Ed50AD1e378CB38434664ef0371df2F3C0C | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xDA3F16869c64cF7B5d2Cac5B1db508A8e0675855(remapped to 0x9922ba5129C68684d77E4F11c5110daA479a5fFb) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x9922ba5129C68684d77E4F11c5110daA479a5fFb | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xa17EEAd3AaaE02Db92F0f1DDEFb183B5265eDC14(remapped to 0x5F589c08ebd4A8605651BC20826030A2a7E9aFfa) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x5F589c08ebd4A8605651BC20826030A2a7E9aFfa | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xcc8B252a735FD1c4F0108ac34eb7859646Ce6fdE(remapped to 0xFd5c7Cb032D163942AeB2D49Db38C434B7de5507) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xFd5c7Cb032D163942AeB2D49Db38C434B7de5507 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xec0a4cA21deD8797394CEF1B800b17a9b1D3B9B8(remapped to 0x8E86565E080d4b2B1F5B09113522cDcc9c6c1a9a) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x8E86565E080d4b2B1F5B09113522cDcc9c6c1a9a | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x9141007e16C363Bf9cbE916C18E73F127aE7755E(remapped to 0x1C48033eB64Cb5041f224340C9459BC02158504F) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x1C48033eB64Cb5041f224340C9459BC02158504F | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xAF7b8037BB4034b833e25ddd3EC1Af2c86f50e04(remapped to 0xf378591C14bAF9f4C3fed96Ca52bf01CBa18f286) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xf378591C14bAF9f4C3fed96Ca52bf01CBa18f286 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xd38E4AC4BAC1464407B6AB25ECF371D1c52ADe82(remapped to 0xfd4C15cc3bE82Aa05B40BF552Ba3Ba3BBB819942) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xfd4C15cc3bE82Aa05B40BF552Ba3Ba3BBB819942 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x5c2DB6fB75d479996298C3605031ee71c0a56E71(remapped to 0xf337cF015A39bc64E7A12f5C9718Eb9b3D98C181) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xf337cF015A39bc64E7A12f5C9718Eb9b3D98C181 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x791456f824C01F05664cA04c7992b5264d5A65C7(remapped to 0x03307c33E17088B1CAc3BdA211cfd55e408968bf) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x03307c33E17088B1CAc3BdA211cfd55e408968bf | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xaDA7d6b05680CE6B44D95b18b3fC456122A41ED3(remapped to 0x9F1C6787F0330F12c3DD9e1466F9B3E3F059Cbb4) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x9F1C6787F0330F12c3DD9e1466F9B3E3F059Cbb4 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xAcfd3a231687ac96492d86B7D6fA934a6277e0e8(remapped to 0xA10B769D1d9787dAe380A150220fBB0EbF4aFC12) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xA10B769D1d9787dAe380A150220fBB0EbF4aFC12 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x52A06923DF5C8f2469C50e0bB342027f675BA866(remapped to 0xd4fAdd415d027a37b8299a05286c334568800Aef) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xd4fAdd415d027a37b8299a05286c334568800Aef | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x44016bAfDA4B2cf59D1ad410251E7B4b1FB60Fef(remapped to 0x23601A459f6b6a6DC661ac9798e5cF623C0c1E42) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x23601A459f6b6a6DC661ac9798e5cF623C0c1E42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xcF5714Ae240A4312B42Fa5E2a459B474C7C842c3(remapped to 0x510cfcb33fd25aDF656fD79b2bb8498F7Ce26bFa) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x510cfcb33fd25aDF656fD79b2bb8498F7Ce26bFa | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xa326272dcf97185DD6d789926FF25485fe35CDe9(remapped to 0xFf2E7D6F7124c42e60bE705Be170eb71B904e732) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xFf2E7D6F7124c42e60bE705Be170eb71B904e732 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xBC2643800ba5E6A8FCBE762a2975854604c880F1(remapped to 0x9f63008b969C5C1797FB54Cb443FCa61Da625a08) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x9f63008b969C5C1797FB54Cb443FCa61Da625a08 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x5066074702990C3C9CBB0d4Ee23BC8cfDDdCbdbd(remapped to 0x10EeceFAEfAf5e5A80E009701959ae1f90189A85) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x10EeceFAEfAf5e5A80E009701959ae1f90189A85 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xd5a7cAF6f763Fe3EdCA79E02AD3B883f49cA1623(remapped to 0xa5D91E3919443146Da7eDAA087bD7F508f6f151a) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xa5D91E3919443146Da7eDAA087bD7F508f6f151a | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x1Cd9A5576B17cedb2bEa763Aba549aE39Fce54c8(remapped to 0x1Bb1706E8345AAf7eE7318C12eEe763055D54f62) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x1Bb1706E8345AAf7eE7318C12eEe763055D54f62 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xf5eb25F12c1D15365C52d6590d07E8360bE1DBFD(remapped to 0x572dcdf1104cedfA15C55e1BC29c5d410e0D93dF) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x572dcdf1104cedfA15C55e1BC29c5d410e0D93dF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x4e416F45E27A4B6a0229b829ed6330960248E909(remapped to 0x3602475f75cB8f975021516aabAA5F404a2A424D) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x3602475f75cB8f975021516aabAA5F404a2A424D | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x97AeB6967fBA4ddbbC93Cb12E74d42cFE794E120(remapped to 0x2c7eD752F05Ae7A9F2aC5a3dFBF541b75eC0E74E) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x2c7eD752F05Ae7A9F2aC5a3dFBF541b75eC0E74E | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xFA848a1574de8640CbBEC2F8d8fBC27807688552(remapped to 0x2010085B59682aae00AB3A5850262B9ef0B83d90) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x2010085B59682aae00AB3A5850262B9ef0B83d90 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x66B6cff53054e14e769d640186846b391B6884e0(remapped to 0x08e8E7dcB1d0f0b5AE110Ec8DCFdCf8d17f2ec8e) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x08e8E7dcB1d0f0b5AE110Ec8DCFdCf8d17f2ec8e | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xf4a6B2b8733936A39f514f113E057C908CD80fE1(remapped to 0xFDFddcB5D8DdBCd9Aa5478e809bB26801846B351) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xFDFddcB5D8DdBCd9Aa5478e809bB26801846B351 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x3d61FEA18e99Abf6D9cD85Bd016a6f1421ee4A3d(remapped to 0x4aF4361B2fEE8565E26349052A504b6912EbBE06) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x4aF4361B2fEE8565E26349052A504b6912EbBE06 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x77836123dF51C841b2660A8A40A50372220e6683(remapped to 0xD95fcDf93428a35d8173F3848ceD4962ECd1E6d5) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xD95fcDf93428a35d8173F3848ceD4962ECd1E6d5 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xFa1B769d80D30AcAB7b8933146F86FfB450449f6(remapped to 0x31768a33eF9D986e5096055a1cdFdF50Bcf0A66D) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x31768a33eF9D986e5096055a1cdFdF50Bcf0A66D | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xB20B0cD12dF53d413E4CcbafBA9Feb69a0407702(remapped to 0x5F615AedFeE6d173896bB34b57Bc44FEAb2Fbd1f) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x5F615AedFeE6d173896bB34b57Bc44FEAb2Fbd1f | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xFf917528F4e72D9A7423d242bDbe7aac1b7c8064(remapped to 0xbb58D841F0f4A0bAb8549E4993fb4c73ea998F9d) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xbb58D841F0f4A0bAb8549E4993fb4c73ea998F9d | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x0787a271135c1E5AB4a4F51Af8A42A563E38CCD0(remapped to 0xC92899091b2664DAf38877FF35798c280259fAea) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xC92899091b2664DAf38877FF35798c280259fAea | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x9826c750Fea6A0aBB02F1E5489ce23C471C74c92(remapped to 0xf8C515E71461546a1e13f37C78398C25356d14b1) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xf8C515E71461546a1e13f37C78398C25356d14b1 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xC069C44a5979a8AB081A97C4488DB9d44BFE67aC(remapped to 0x61FECc25310df6Fe3e6E02C1E96B92105AbA316f) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x61FECc25310df6Fe3e6E02C1E96B92105AbA316f | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xb2bCaBe26F9AF9a7Afcee95853C7E33554Bd219C(remapped to 0x6d059e23677bEa79A953C4be0DeaF573B9c4694f) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x6d059e23677bEa79A953C4be0DeaF573B9c4694f | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xBBB06E98CF4E00c8cDA42c3C8b862de7cC3f520D(remapped to 0x6d31dfA564ddDC599ab07eb866739FE1A185bEbd) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x6d31dfA564ddDC599ab07eb866739FE1A185bEbd | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xFCb7d712eFc408D2b78Cd698f2025D1A85D83a84(remapped to 0x50B24c053fdfbf55264a6008CabB05CF3d823B4f) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x50B24c053fdfbf55264a6008CabB05CF3d823B4f | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x3B49C58fEca066328089cFFeBAF751ee2Afe71DE(remapped to 0xd538d54bc8C817E930Cf431a77b047161A6D6Dd4) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xd538d54bc8C817E930Cf431a77b047161A6D6Dd4 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x03D6DBaf9684C9bbA818A9bE1F66300e8DeEc8fB(remapped to 0x78b5CFf233f36b5eFB1737211ec47b60a1985513) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x78b5CFf233f36b5eFB1737211ec47b60a1985513 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x0F47FBBC2aB600cff2D8da94Dd53c8De11fA8EC2(remapped to 0x9A1bC707F02b5116f091d596e676C225EF13DCc9) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x9A1bC707F02b5116f091d596e676C225EF13DCc9 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xF5426f5D6F46Eb6a861adEdD37da9F3bd4EeB05B(remapped to 0x0cC0EF5197A29caF672756c0914eEa3AEE7FdB0C) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x0cC0EF5197A29caF672756c0914eEa3AEE7FdB0C | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x7A0Afb8c22D099e8d9353207c7053174b71F9fF0(remapped to 0xF0e4337EC8B22210b3263A3025decD4f80016Abe) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xF0e4337EC8B22210b3263A3025decD4f80016Abe | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xA1e2E8702c87DfB9B3882b319eEEf6cfF9E289Ad(remapped to 0x0bac85Fb2027d8F37E4CaF1F005CB10635ed0dBC) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x0bac85Fb2027d8F37E4CaF1F005CB10635ed0dBC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x9BbA6A5A1289EB02Df3Ff4bB66d526d1f33ae92c(remapped to 0xC4580Ac8655C44a66946B4f9AD07f2bE11C13A4D) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xC4580Ac8655C44a66946B4f9AD07f2bE11C13A4D | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xd58cB804098D02aa6EF99982D04BAF36D784fA7F(remapped to 0x1AB14A7c708961317849D776F4EDBCA02E57b984) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x1AB14A7c708961317849D776F4EDBCA02E57b984 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xabb152795d0a1c12ced3b6c67839F8dfC1b69C98(remapped to 0xdDb05B2292A9F9dc4ae5bfDeb6285F879f95Cff4) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xdDb05B2292A9F9dc4ae5bfDeb6285F879f95Cff4 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xE65253613f215241c99567F89Cc814567a481116(remapped to 0x052b548aCD5eFe7C9E58f62b9716039eba361931) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x052b548aCD5eFe7C9E58f62b9716039eba361931 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xC13928e81b595D2256c9753fC7989Ac902d0CEE7(remapped to 0xDD9655D40561ea1243E00Cfd29A4a1B9536096E3) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xDD9655D40561ea1243E00Cfd29A4a1B9536096E3 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x83c85c0dd6F552a61743FA28F94c92C34Ba12F8a(remapped to 0xbe0583f5cFAFDF152186E2741c1EF6F9085005b9) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xbe0583f5cFAFDF152186E2741c1EF6F9085005b9 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xBc335622F9f0316D2435507aF3F543424906B7b5(remapped to 0x2371791B92c655609Ae570D7810fA251602756A1) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x2371791B92c655609Ae570D7810fA251602756A1 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccc with code and balance 1099511627776..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 6300000003601260003963000000036000F33a4355 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

echo "[intrinsic] Creating receiver 0x1111111111111111111111111111111111111111 with code and balance 1099511627776..."
ADDR_1111111111111111111111111111111111111111=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 63000007a1601260003963000007a16000F3610020565b60006103e864174876e800833181038281049350505050919050565b61003d73e2aff99a29fadcd427b47b514b42ee5394913a01610004565b60005561005d736c5f5b28b10d021bf947e626bf4565c8957162b4610004565b60015561007d733d0fe89106005c4dfe13b1dfddfa6c012f0fbc45610004565b60025561009d7332bceef44283dba687554010acd79838afac8daf610004565b6003556100bd73387c92d4d20731fa792c392d81f717f246b59d3f610004565b6004556100dd73d3e613c808af8c79d0eac680c97a55252ed612e4610004565b6005556100fd73b0fc229d18a7f912056a48b19df7ceb81d5a11ce610004565b60065561011d73b5490dcbdcbe9fdd913bf9b875d49e2b1b1fb134610004565b60075561013d73d8532747c5719e0e2a7bcaf4f554e280c537fc41610004565b60085561015d734c2b54bc284422ac56062dbff1f8c37d85facc52610004565b60095561017d730f752cbdef4ef9a5f014bef8db9824b7bc4c4fa6610004565b600a5561019d73da3f16869c64cf7b5d2cac5b1db508a8e0675855610004565b600b556101bd73a17eead3aaae02db92f0f1ddefb183b5265edc14610004565b600c556101dd73cc8b252a735fd1c4f0108ac34eb7859646ce6fde610004565b600d556101fd73ec0a4ca21ded8797394cef1b800b17a9b1d3b9b8610004565b600e5561021d739141007e16c363bf9cbe916c18e73f127ae7755e610004565b600f5561023d73af7b8037bb4034b833e25ddd3ec1af2c86f50e04610004565b60105561025d73d38e4ac4bac1464407b6ab25ecf371d1c52ade82610004565b60115561027d735c2db6fb75d479996298c3605031ee71c0a56e71610004565b60125561029d73791456f824c01f05664ca04c7992b5264d5a65c7610004565b6013556102bd73ada7d6b05680ce6b44d95b18b3fc456122a41ed3610004565b6014556102dd73acfd3a231687ac96492d86b7d6fa934a6277e0e8610004565b6015556102fd7352a06923df5c8f2469c50e0bb342027f675ba866610004565b60165561031d7344016bafda4b2cf59d1ad410251e7b4b1fb60fef610004565b60175561033d73cf5714ae240a4312b42fa5e2a459b474c7c842c3610004565b60185561035d73a326272dcf97185dd6d789926ff25485fe35cde9610004565b60195561037d73bc2643800ba5e6a8fcbe762a2975854604c880f1610004565b601a5561039d735066074702990c3c9cbb0d4ee23bc8cfdddcbdbd610004565b601b556103bd73d5a7caf6f763fe3edca79e02ad3b883f49ca1623610004565b601c556103dd731cd9a5576b17cedb2bea763aba549ae39fce54c8610004565b601d556103fd73f5eb25f12c1d15365c52d6590d07e8360be1dbfd610004565b601e5561041d734e416f45e27a4b6a0229b829ed6330960248e909610004565b601f5561043d7397aeb6967fba4ddbbc93cb12e74d42cfe794e120610004565b60205561045d73fa848a1574de8640cbbec2f8d8fbc27807688552610004565b60215561047d7366b6cff53054e14e769d640186846b391b6884e0610004565b60225561049d73f4a6b2b8733936a39f514f113e057c908cd80fe1610004565b6023556104bd733d61fea18e99abf6d9cd85bd016a6f1421ee4a3d610004565b6024556104dd7377836123df51c841b2660a8a40a50372220e6683610004565b6025556104fd73fa1b769d80d30acab7b8933146f86ffb450449f6610004565b60265561051d73b20b0cd12df53d413e4ccbafba9feb69a0407702610004565b60275561053d73ff917528f4e72d9a7423d242bdbe7aac1b7c8064610004565b60285561055d730787a271135c1e5ab4a4f51af8a42a563e38ccd0610004565b60295561057d739826c750fea6a0abb02f1e5489ce23c471c74c92610004565b602a5561059d73c069c44a5979a8ab081a97c4488db9d44bfe67ac610004565b602b556105bd73b2bcabe26f9af9a7afcee95853c7e33554bd219c610004565b602c556105dd73bbb06e98cf4e00c8cda42c3c8b862de7cc3f520d610004565b602d556105fd73fcb7d712efc408d2b78cd698f2025d1a85d83a84610004565b602e5561061d733b49c58feca066328089cffebaf751ee2afe71de610004565b602f5561063d7303d6dbaf9684c9bba818a9be1f66300e8deec8fb610004565b60305561065d730f47fbbc2ab600cff2d8da94dd53c8de11fa8ec2610004565b60315561067d73f5426f5d6f46eb6a861adedd37da9f3bd4eeb05b610004565b60325561069d737a0afb8c22d099e8d9353207c7053174b71f9ff0610004565b6033556106bd73a1e2e8702c87dfb9b3882b319eeef6cff9e289ad610004565b6034556106dd739bba6a5a1289eb02df3ff4bb66d526d1f33ae92c610004565b6035556106fd73d58cb804098d02aa6ef99982d04baf36d784fa7f610004565b60365561071d73abb152795d0a1c12ced3b6c67839f8dfc1b69c98610004565b60375561073d73e65253613f215241c99567f89cc814567a481116610004565b60385561075d73c13928e81b595d2256c9753fc7989ac902d0cee7610004565b60395561077d7383c85c0dd6f552a61743fa28f94c92c34ba12f8a610004565b603a5561079d73bc335622f9f0316d2435507af3f543424906b7b5610004565b603b55 | jq -r .contractAddress)
echo $ADDR_1111111111111111111111111111111111111111

echo "[intrinsic] Processing transaction number 1250 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xE4F039857d0218694dfA7042c2a9ffcBf4D2D568) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 0b0b00affbeb8eb04576feef8b94a44e4dbf211084aeb90440e572f170886d8d --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1251 from 0xe2AFf99a29fADcd427b47b514b42ee5394913A01(remapped to 0x2Af70Bca55fB9A5786A45d053BB8929295f9444e) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b624c961ef1405a5a63ef23aadcf8ac1a50f0f0142da773385b0aa1d2bcbdf03 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1252 from 0x6c5F5b28B10d021bf947e626Bf4565C8957162B4(remapped to 0x55996bcD59fe04337091b5284a12409Da34418B8) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 2692ba4a5dee1627f39523ef489284b5117c3236a44c420b0808079d7da43c87 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1253 from 0x3D0fE89106005C4Dfe13b1DfdDFa6c012F0FbC45(remapped to 0x918e60f62Ddc069FfcDFd41acaf8098b62eD9ae7) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 122c17f04a299ecbd22ffa3da24c6c6f931f1f50dcca509f1419b8cc9c487355 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1254 from 0x32BcEef44283dba687554010aCd79838aFAc8daf(remapped to 0x7F65aD007c0CB3c9C02f9Cd41F31FFe5aeb9cCD9) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 5d3f629d203668451931deef582f63c4592b6be5472ee147b2a6989534533bca --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1255 from 0x387c92d4D20731FA792c392D81f717f246b59d3f(remapped to 0x49CdcE3e3a1Dd4944c43bd97CdF37D4ffC62A970) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 890da31686c302ac5ab00552ba5a299d96148ac4c93161f2496759703c32e6ed --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1256 from 0xD3e613c808af8C79d0eAc680c97a55252Ed612E4(remapped to 0x0E5c7C8B41D849fb727B513531dB641636a5036e) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 029f7626493c6d8b5a2a7a8e1b822ec07c586cde6a1a03373afa599c0aaf095b --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1257 from 0xB0Fc229D18A7F912056a48b19DF7cEb81D5A11ce(remapped to 0xdd3a8CeeD71923eDbD7eF7259803C071B3A04013) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 2168439112d8e17b4599276133c04e81bfdc7e44056317f5b8fc4201c97093fa --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1258 from 0xB5490DCbdCBE9fDd913BF9b875d49e2B1b1FB134(remapped to 0x3faee69d3bB6ae845CBB1E63824FE7fc5506EFe7) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 7afc487b23746d3f7eb06995b3c21e8558f4b903e9cc4ba9936d3a067783d298 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1259 from 0xD8532747C5719E0e2A7BCaF4F554E280c537fC41(remapped to 0x8cFeA2D235A4Ad0Fa0e0a628Ee947fa426acdd01) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key caa35955898b589891c74643093560b3337111b49e7d983ae136b18624f5b1e2 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1260 from 0x4C2B54bC284422ac56062dBFf1F8c37D85FACc52(remapped to 0x280A24B502809abb14d3Ff2589B288385A68e026) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d370f427d234c020fc4561f889052b87a4b636cac2bdedb46954c259d3c177f4 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1261 from 0x0f752cbdef4ef9A5F014bEF8db9824B7Bc4C4FA6(remapped to 0x080e6Ed50AD1e378CB38434664ef0371df2F3C0C) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d4110cf94d9d4626e702c693eed519335e14b69c15875701c64667c06f4a0fd9 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1262 from 0xDA3F16869c64cF7B5d2Cac5B1db508A8e0675855(remapped to 0x9922ba5129C68684d77E4F11c5110daA479a5fFb) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 5ec1e88af10b155ed213117c998969b81c0cf625f95c42076d396328dc1b4635 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1263 from 0xa17EEAd3AaaE02Db92F0f1DDEFb183B5265eDC14(remapped to 0x5F589c08ebd4A8605651BC20826030A2a7E9aFfa) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key aec8353b53ec92339e1a99869ae80759fce83ee1ad71508c6bb1acfa89a7aa1c --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1264 from 0xcc8B252a735FD1c4F0108ac34eb7859646Ce6fdE(remapped to 0xFd5c7Cb032D163942AeB2D49Db38C434B7de5507) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f64c93cd4c3d6ce55c9f23e22c3e56c61ac7fb384df224d8329aeb5a7d37af3b --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1265 from 0xec0a4cA21deD8797394CEF1B800b17a9b1D3B9B8(remapped to 0x8E86565E080d4b2B1F5B09113522cDcc9c6c1a9a) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 65771aa338c7599231283bb18ccdab147481e996baef21ed84a3ab79f24a544b --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1266 from 0x9141007e16C363Bf9cbE916C18E73F127aE7755E(remapped to 0x1C48033eB64Cb5041f224340C9459BC02158504F) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key e411205894f84bc5c5a5b4667d96a2946d5a62d1b27348a9e569fb5a2aad9019 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1267 from 0xAF7b8037BB4034b833e25ddd3EC1Af2c86f50e04(remapped to 0xf378591C14bAF9f4C3fed96Ca52bf01CBa18f286) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 399cee9549a204b18fa9085652cb0311369624eac4df10f304433779d52cbc6f --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1268 from 0xd38E4AC4BAC1464407B6AB25ECF371D1c52ADe82(remapped to 0xfd4C15cc3bE82Aa05B40BF552Ba3Ba3BBB819942) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 90f75aa5c64e11e4c60b83a5304077bd44e2b59d00cae9fcb86def3a4913de9e --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1269 from 0x5c2DB6fB75d479996298C3605031ee71c0a56E71(remapped to 0xf337cF015A39bc64E7A12f5C9718Eb9b3D98C181) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d87dad5dbb6cf3f707047adce863276b0f65ed6e62f54f186affb7cc8ffb9727 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1270 from 0x791456f824C01F05664cA04c7992b5264d5A65C7(remapped to 0x03307c33E17088B1CAc3BdA211cfd55e408968bf) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 2da040b57307d618688e29866e06f6801538d11dc27d6303e1b89e0a1f341190 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1271 from 0xaDA7d6b05680CE6B44D95b18b3fC456122A41ED3(remapped to 0x9F1C6787F0330F12c3DD9e1466F9B3E3F059Cbb4) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 6e029ff2bd92a546cc7f25070ca1c4e4587799e300bf3157cbf1b777c057240a --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1272 from 0xAcfd3a231687ac96492d86B7D6fA934a6277e0e8(remapped to 0xA10B769D1d9787dAe380A150220fBB0EbF4aFC12) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key aba668175459f11fab9333076e8a8cc3af0b9ac5c18cd11799c5e67c025b3e45 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1273 from 0x52A06923DF5C8f2469C50e0bB342027f675BA866(remapped to 0xd4fAdd415d027a37b8299a05286c334568800Aef) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 4073cc8cde43e6e40e4eac3d908e28d6cdcc812b8a81ab5db2fdc4da4481b327 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1274 from 0x44016bAfDA4B2cf59D1ad410251E7B4b1FB60Fef(remapped to 0x23601A459f6b6a6DC661ac9798e5cF623C0c1E42) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 4b70e58460c7eb391b0544584266935a94d2c49b3e8fc8a86004373d2fff087e --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1275 from 0xcF5714Ae240A4312B42Fa5E2a459B474C7C842c3(remapped to 0x510cfcb33fd25aDF656fD79b2bb8498F7Ce26bFa) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cb8fbe83f4098e4a5cbd7b8221d42a2e0a0c9e384820b6a58240be271c420e00 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1276 from 0xa326272dcf97185DD6d789926FF25485fe35CDe9(remapped to 0xFf2E7D6F7124c42e60bE705Be170eb71B904e732) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 391c04a004770f6dd2bda5ff9d90eba5eea34191d28da83bdace8e8b79632057 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1277 from 0xBC2643800ba5E6A8FCBE762a2975854604c880F1(remapped to 0x9f63008b969C5C1797FB54Cb443FCa61Da625a08) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key a67a2ca5845a76d110afccbeaa715e65da53e891b1deaa7f5f33efc95165b5d8 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1278 from 0x5066074702990C3C9CBB0d4Ee23BC8cfDDdCbdbd(remapped to 0x10EeceFAEfAf5e5A80E009701959ae1f90189A85) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 687c0b8ebca00018a91f04db68d2c979a2de65e79b61dc25f57524efd9bc827b --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1279 from 0xd5a7cAF6f763Fe3EdCA79E02AD3B883f49cA1623(remapped to 0xa5D91E3919443146Da7eDAA087bD7F508f6f151a) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 69ce7502acc679e63e6bd097da1f875912da417b8ab1943a6b92aab0eb2f57cc --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1280 from 0x1Cd9A5576B17cedb2bEa763Aba549aE39Fce54c8(remapped to 0x1Bb1706E8345AAf7eE7318C12eEe763055D54f62) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 2443966bd638573643da5486262c5a3add2f9a6aea098ccfc32e665e30b258f9 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1281 from 0xf5eb25F12c1D15365C52d6590d07E8360bE1DBFD(remapped to 0x572dcdf1104cedfA15C55e1BC29c5d410e0D93dF) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 1e431274027dfba489bded672783e06b052bfe8c51c7d1b3b33806cf869d3bda --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1282 from 0x4e416F45E27A4B6a0229b829ed6330960248E909(remapped to 0x3602475f75cB8f975021516aabAA5F404a2A424D) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key e0e1142439f4582f133b4fc41676a5745a2088bc61d0a43875a6ae0fbcd211fa --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1283 from 0x97AeB6967fBA4ddbbC93Cb12E74d42cFE794E120(remapped to 0x2c7eD752F05Ae7A9F2aC5a3dFBF541b75eC0E74E) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key aec5aea859d95ed0dadc845f8f5cddad056f8cafde998e64c6882026755b9180 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1284 from 0xFA848a1574de8640CbBEC2F8d8fBC27807688552(remapped to 0x2010085B59682aae00AB3A5850262B9ef0B83d90) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 3d07da65355a20766b56ab9d19a8ab65d8b7aaf6a02bab273013cf92fbb89456 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1285 from 0x66B6cff53054e14e769d640186846b391B6884e0(remapped to 0x08e8E7dcB1d0f0b5AE110Ec8DCFdCf8d17f2ec8e) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 35cb35fb54b580b95595be69d21938b24df56e0e9a4799fafa361f18c43babb0 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1286 from 0xf4a6B2b8733936A39f514f113E057C908CD80fE1(remapped to 0xFDFddcB5D8DdBCd9Aa5478e809bB26801846B351) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 71689cd0655a5fa2d4f7a4cd3eb5a30ebbbdcbda55ffbce1b76866edb43aeacb --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1287 from 0x3d61FEA18e99Abf6D9cD85Bd016a6f1421ee4A3d(remapped to 0x4aF4361B2fEE8565E26349052A504b6912EbBE06) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 71072a5e75e95fbf70c34b89204a2651c4481038839f52e21ea14fc62ce7e6d3 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1288 from 0x77836123dF51C841b2660A8A40A50372220e6683(remapped to 0xD95fcDf93428a35d8173F3848ceD4962ECd1E6d5) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 3e5dc78225faf3385fe7234c6936dd7454a9172af97f20f0212fa24e7fc6bfc4 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1289 from 0xFa1B769d80D30AcAB7b8933146F86FfB450449f6(remapped to 0x31768a33eF9D986e5096055a1cdFdF50Bcf0A66D) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 7bbd3dbee73f0cb1a0ce548d86eebb978921fbe2ce2843a4427a286e83eb2281 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1290 from 0xB20B0cD12dF53d413E4CcbafBA9Feb69a0407702(remapped to 0x5F615AedFeE6d173896bB34b57Bc44FEAb2Fbd1f) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 59aa1a0239c417273d9b0295894469c92eb18f3acf9a69e1ee87490cd87903de --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1291 from 0xFf917528F4e72D9A7423d242bDbe7aac1b7c8064(remapped to 0xbb58D841F0f4A0bAb8549E4993fb4c73ea998F9d) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key a3f53973f9409458398d48efd21061b72f88bfd1150b5fab50b324ce9113060b --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1292 from 0x0787a271135c1E5AB4a4F51Af8A42A563E38CCD0(remapped to 0xC92899091b2664DAf38877FF35798c280259fAea) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d8aa0251225b1fc5ce1298f8c88f50ecff93c0200d95a74b6730e935fe29e313 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1293 from 0x9826c750Fea6A0aBB02F1E5489ce23C471C74c92(remapped to 0xf8C515E71461546a1e13f37C78398C25356d14b1) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ea9998eac1c91e1dd21b0e4fd1381b1dd630c8bc572bf5e6bcb51fbe90993b49 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1294 from 0xC069C44a5979a8AB081A97C4488DB9d44BFE67aC(remapped to 0x61FECc25310df6Fe3e6E02C1E96B92105AbA316f) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 09ccbfaf3bcab5f921641f639822e891bd7bd4896316b7f52391399311b9c013 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1295 from 0xb2bCaBe26F9AF9a7Afcee95853C7E33554Bd219C(remapped to 0x6d059e23677bEa79A953C4be0DeaF573B9c4694f) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 8348a719f92a56cb4ec0af58bcc0ba2483adb8ccb2f88330a93337da815b8c20 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1296 from 0xBBB06E98CF4E00c8cDA42c3C8b862de7cC3f520D(remapped to 0x6d31dfA564ddDC599ab07eb866739FE1A185bEbd) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key c9194f77c47c1eed15b5d44027593f521407661f6844c5946587e1242f5712a6 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1297 from 0xFCb7d712eFc408D2b78Cd698f2025D1A85D83a84(remapped to 0x50B24c053fdfbf55264a6008CabB05CF3d823B4f) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d8e5cc20bad45c0787aa8ed61d03e24665e84b6b063527e9f359b24a426d3117 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1298 from 0x3B49C58fEca066328089cFFeBAF751ee2Afe71DE(remapped to 0xd538d54bc8C817E930Cf431a77b047161A6D6Dd4) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 14b0baae11c5e805becf17ecca2b39b9e9e33caab17568380e4ef204adbdc149 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1299 from 0x03D6DBaf9684C9bbA818A9bE1F66300e8DeEc8fB(remapped to 0x78b5CFf233f36b5eFB1737211ec47b60a1985513) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 2ee33ede8fa307d94886ddfb26c7caaf785357b5f254154b70d1a4065a9c0877 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1300 from 0x0F47FBBC2aB600cff2D8da94Dd53c8De11fA8EC2(remapped to 0x9A1bC707F02b5116f091d596e676C225EF13DCc9) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 28ccacfec04e60b3d5db4fe029ef16c3d6b02d98de3e0116295604ee46f6c9a0 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1301 from 0xF5426f5D6F46Eb6a861adEdD37da9F3bd4EeB05B(remapped to 0x0cC0EF5197A29caF672756c0914eEa3AEE7FdB0C) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 4caf0fd3da1a112a951f1fd1bff49492a9f7004354a20119bc57a5eca8ae6dde --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1302 from 0x7A0Afb8c22D099e8d9353207c7053174b71F9fF0(remapped to 0xF0e4337EC8B22210b3263A3025decD4f80016Abe) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b2ac8431471bbfc4e14031b27d67b6fd219184ced12379e5af01e5d9373bdea0 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1303 from 0xA1e2E8702c87DfB9B3882b319eEEf6cfF9E289Ad(remapped to 0x0bac85Fb2027d8F37E4CaF1F005CB10635ed0dBC) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 660609db0c259b9673f79ced7779ed20523626c1c30bb9158b875157ac14ee16 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1304 from 0x9BbA6A5A1289EB02Df3Ff4bB66d526d1f33ae92c(remapped to 0xC4580Ac8655C44a66946B4f9AD07f2bE11C13A4D) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key e0ff25f571168f0c079fd8d2b9cee3b90038550a752a34b822a7033c969b09b2 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1305 from 0xd58cB804098D02aa6EF99982D04BAF36D784fA7F(remapped to 0x1AB14A7c708961317849D776F4EDBCA02E57b984) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key e2f65dd8772a9c56193ff645fb8d15a854b0b0ca44b32900dc623a948907e04e --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1306 from 0xabb152795d0a1c12ced3b6c67839F8dfC1b69C98(remapped to 0xdDb05B2292A9F9dc4ae5bfDeb6285F879f95Cff4) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d9ce052db3fee444ecade72a40f811cf959532bc5f9619f443aebfca8503e3c3 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1307 from 0xE65253613f215241c99567F89Cc814567a481116(remapped to 0x052b548aCD5eFe7C9E58f62b9716039eba361931) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 9dd52082a402d6dbe23a4bd189e0ba8ea600ce3ed1a1017e3a7c5f07de16cba2 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1308 from 0xC13928e81b595D2256c9753fC7989Ac902d0CEE7(remapped to 0xDD9655D40561ea1243E00Cfd29A4a1B9536096E3) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 24ef2cb61f56e70c8d6f64b1d2eb9638a5049235921f7e951ff4145638b37421 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1309 from 0x83c85c0dd6F552a61743FA28F94c92C34Ba12F8a(remapped to 0xbe0583f5cFAFDF152186E2741c1EF6F9085005b9) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key a175b53fc2dff2db7e0e96f52a87bd08ea0797f2dbb1621a9c6176be49e9fcf7 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1310 from 0xBc335622F9f0316D2435507aF3F543424906B7b5(remapped to 0x2371791B92c655609Ae570D7810fA251602756A1) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f3da9da8d88cb4ca9324902948f3c12cde0394380885f3dc8aa7d5bed6616815 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1311 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xE4F039857d0218694dfA7042c2a9ffcBf4D2D568) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 0b0b00affbeb8eb04576feef8b94a44e4dbf211084aeb90440e572f170886d8d --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

