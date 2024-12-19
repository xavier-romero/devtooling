# PRV_KEY for master sender 0xF32e0d5bD2a6FFaDB7a24aD7f739a82009942bD1
PRV_KEY=0eb878138f090adad96500eada1ce4e30647a4058def5f490cb90c816a4e00fa
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test intrinsicOrFail (src/BlockchainTestsFiller/InvalidBlocks/bcEIP1559/intrinsicOrFailFiller.yml)"

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xe2AFf99a29fADcd427b47b514b42ee5394913A01(remapped to 0x9DE8A2dBA4715d23e0042A78aEb9b3B32a4A11Fa) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x9DE8A2dBA4715d23e0042A78aEb9b3B32a4A11Fa | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x6c5F5b28B10d021bf947e626Bf4565C8957162B4(remapped to 0xDC2D5628238A31b7Cc86aDF52A8EFF8444E8d9a4) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xDC2D5628238A31b7Cc86aDF52A8EFF8444E8d9a4 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x3D0fE89106005C4Dfe13b1DfdDFa6c012F0FbC45(remapped to 0x2c2Bdf0f5c7e3CC43dfF3Db87f4de0AF2ffeE338) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x2c2Bdf0f5c7e3CC43dfF3Db87f4de0AF2ffeE338 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x32BcEef44283dba687554010aCd79838aFAc8daf(remapped to 0x2063604e299f3D495fcBeA0C8E95AE05Fc2cc422) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x2063604e299f3D495fcBeA0C8E95AE05Fc2cc422 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x387c92d4D20731FA792c392D81f717f246b59d3f(remapped to 0x0598C21466eC6ac81279d41dcc50d2f2d281F677) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x0598C21466eC6ac81279d41dcc50d2f2d281F677 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xD3e613c808af8C79d0eAc680c97a55252Ed612E4(remapped to 0x47769790bE3b138d85Ba731A97336cc91101dC37) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x47769790bE3b138d85Ba731A97336cc91101dC37 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xB0Fc229D18A7F912056a48b19DF7cEb81D5A11ce(remapped to 0xBbc879A18865e9c1b80E97440B109a2bd4b016a5) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xBbc879A18865e9c1b80E97440B109a2bd4b016a5 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xB5490DCbdCBE9fDd913BF9b875d49e2B1b1FB134(remapped to 0x7F127351Ee76633d77e8ae2Ca684910cd4B77229) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x7F127351Ee76633d77e8ae2Ca684910cd4B77229 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xD8532747C5719E0e2A7BCaF4F554E280c537fC41(remapped to 0x214F46eA9E9552825BEBCF50a1e91CD1bfbA8dfb) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x214F46eA9E9552825BEBCF50a1e91CD1bfbA8dfb | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x4C2B54bC284422ac56062dBFf1F8c37D85FACc52(remapped to 0xE6bF70eA01632488DD93ec0d1B0B759912b93137) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xE6bF70eA01632488DD93ec0d1B0B759912b93137 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x0f752cbdef4ef9A5F014bEF8db9824B7Bc4C4FA6(remapped to 0x0eb55fE7e528299BB9124b6a8f2DfDc35Be9BB4B) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x0eb55fE7e528299BB9124b6a8f2DfDc35Be9BB4B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xDA3F16869c64cF7B5d2Cac5B1db508A8e0675855(remapped to 0x0BF38B0c827e1a846e51E7DDf1084D43b692A425) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x0BF38B0c827e1a846e51E7DDf1084D43b692A425 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xa17EEAd3AaaE02Db92F0f1DDEFb183B5265eDC14(remapped to 0x81C0828275c32E2fC7a6176aE02c17Fd6CB38BD7) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x81C0828275c32E2fC7a6176aE02c17Fd6CB38BD7 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xcc8B252a735FD1c4F0108ac34eb7859646Ce6fdE(remapped to 0x9ef3B905fEC09d0f15Fe4bCb7e5D78f520326FEf) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x9ef3B905fEC09d0f15Fe4bCb7e5D78f520326FEf | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xec0a4cA21deD8797394CEF1B800b17a9b1D3B9B8(remapped to 0xac98fcf2e9576d0ab66c55f4b01185c5AE7D5B77) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xac98fcf2e9576d0ab66c55f4b01185c5AE7D5B77 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x9141007e16C363Bf9cbE916C18E73F127aE7755E(remapped to 0x3C4A1805cbcF5a4a1E1068BDa1a74AD70730E60E) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x3C4A1805cbcF5a4a1E1068BDa1a74AD70730E60E | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xAF7b8037BB4034b833e25ddd3EC1Af2c86f50e04(remapped to 0x30c31c768C120C2d9ACAF7efA9B08E99AC09e9FE) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x30c31c768C120C2d9ACAF7efA9B08E99AC09e9FE | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xd38E4AC4BAC1464407B6AB25ECF371D1c52ADe82(remapped to 0x56Ca968e942530E7D388F0Ec87f8313BE496cD49) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x56Ca968e942530E7D388F0Ec87f8313BE496cD49 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x5c2DB6fB75d479996298C3605031ee71c0a56E71(remapped to 0x8120aA01b736C8B0D46fC3f1114df2a7707b7D7C) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x8120aA01b736C8B0D46fC3f1114df2a7707b7D7C | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x791456f824C01F05664cA04c7992b5264d5A65C7(remapped to 0xed3617d5d882653f9a11b4b1551B7F0A66B38923) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xed3617d5d882653f9a11b4b1551B7F0A66B38923 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xaDA7d6b05680CE6B44D95b18b3fC456122A41ED3(remapped to 0x401C68eaCA184874A3d7D5D71dE3F4bFb228E29b) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x401C68eaCA184874A3d7D5D71dE3F4bFb228E29b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xAcfd3a231687ac96492d86B7D6fA934a6277e0e8(remapped to 0x848A1EBe73cAf8E3Ad102dC0085190A577B860c4) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x848A1EBe73cAf8E3Ad102dC0085190A577B860c4 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x52A06923DF5C8f2469C50e0bB342027f675BA866(remapped to 0xbcA482A2583205fA5d6F640BA26Ea5a39C5c52a1) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xbcA482A2583205fA5d6F640BA26Ea5a39C5c52a1 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x44016bAfDA4B2cf59D1ad410251E7B4b1FB60Fef(remapped to 0x7d8CC9D7dC691470E5d37DECcF4c6A04D186c7d0) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x7d8CC9D7dC691470E5d37DECcF4c6A04D186c7d0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xcF5714Ae240A4312B42Fa5E2a459B474C7C842c3(remapped to 0x1DbC99b9C1d3375775BcdCd54f44f1A1c0359F85) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x1DbC99b9C1d3375775BcdCd54f44f1A1c0359F85 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xa326272dcf97185DD6d789926FF25485fe35CDe9(remapped to 0xF2f2f54aBb5Cc8aaB1fD0369Af209CfdCa026Eeb) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xF2f2f54aBb5Cc8aaB1fD0369Af209CfdCa026Eeb | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xBC2643800ba5E6A8FCBE762a2975854604c880F1(remapped to 0x944ca58F3F7742Edb00B1a72Cfa49101c927a8af) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x944ca58F3F7742Edb00B1a72Cfa49101c927a8af | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x5066074702990C3C9CBB0d4Ee23BC8cfDDdCbdbd(remapped to 0xBcd48233615dd99Da6D1444c7568c0DdEd59fe8e) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xBcd48233615dd99Da6D1444c7568c0DdEd59fe8e | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xd5a7cAF6f763Fe3EdCA79E02AD3B883f49cA1623(remapped to 0x37cCC975d45770835Ca17C4358052AdDCE9B514F) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x37cCC975d45770835Ca17C4358052AdDCE9B514F | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x1Cd9A5576B17cedb2bEa763Aba549aE39Fce54c8(remapped to 0xBc1AD1C49943913B4D8AC404b9E6c5CcFF673d06) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xBc1AD1C49943913B4D8AC404b9E6c5CcFF673d06 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xf5eb25F12c1D15365C52d6590d07E8360bE1DBFD(remapped to 0x90f72181Ad89fB17Fa8F3Ca6cfcefA61b507d73c) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x90f72181Ad89fB17Fa8F3Ca6cfcefA61b507d73c | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x4e416F45E27A4B6a0229b829ed6330960248E909(remapped to 0xAEcF32F6136847593B0E2019900207A65b6B11a5) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xAEcF32F6136847593B0E2019900207A65b6B11a5 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x97AeB6967fBA4ddbbC93Cb12E74d42cFE794E120(remapped to 0x091e632f6c97d32dD7a24ccDCf84Db2585C6F142) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x091e632f6c97d32dD7a24ccDCf84Db2585C6F142 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xFA848a1574de8640CbBEC2F8d8fBC27807688552(remapped to 0x37fe2f29E47c4599D7E824487B0A0D4EC955fFcA) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x37fe2f29E47c4599D7E824487B0A0D4EC955fFcA | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x66B6cff53054e14e769d640186846b391B6884e0(remapped to 0xcF8AA919345b87cA998E29Cd72ffF3507f8A1A72) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xcF8AA919345b87cA998E29Cd72ffF3507f8A1A72 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xf4a6B2b8733936A39f514f113E057C908CD80fE1(remapped to 0xd2DAE39fAe233D91F1A5E3Cb71Ebc9def20cf5d3) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xd2DAE39fAe233D91F1A5E3Cb71Ebc9def20cf5d3 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x3d61FEA18e99Abf6D9cD85Bd016a6f1421ee4A3d(remapped to 0x07066fa3dDf831d8108292778Bc196d8a5C65A10) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x07066fa3dDf831d8108292778Bc196d8a5C65A10 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x77836123dF51C841b2660A8A40A50372220e6683(remapped to 0x175F4512D36E538c982e964b313C63f4663f0D0E) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x175F4512D36E538c982e964b313C63f4663f0D0E | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xFa1B769d80D30AcAB7b8933146F86FfB450449f6(remapped to 0x56fDe39fDE63c5710b72e82dea9c9300adB28e51) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x56fDe39fDE63c5710b72e82dea9c9300adB28e51 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xB20B0cD12dF53d413E4CcbafBA9Feb69a0407702(remapped to 0x2473ac9e143eD114570CC3E9088612A004f33d72) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x2473ac9e143eD114570CC3E9088612A004f33d72 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xFf917528F4e72D9A7423d242bDbe7aac1b7c8064(remapped to 0x93f834Db03769B091e09B65e9D71f771c4f796de) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x93f834Db03769B091e09B65e9D71f771c4f796de | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x0787a271135c1E5AB4a4F51Af8A42A563E38CCD0(remapped to 0x927754FF9F2323d71c97b807fA19495E0656e28B) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x927754FF9F2323d71c97b807fA19495E0656e28B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x9826c750Fea6A0aBB02F1E5489ce23C471C74c92(remapped to 0x8144524c2Dce2ab68B96fCe6A5c01017Fd5eEf88) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x8144524c2Dce2ab68B96fCe6A5c01017Fd5eEf88 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xC069C44a5979a8AB081A97C4488DB9d44BFE67aC(remapped to 0x14d05e112B15ef34547E8bF7a1e5839a24903a6b) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x14d05e112B15ef34547E8bF7a1e5839a24903a6b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xb2bCaBe26F9AF9a7Afcee95853C7E33554Bd219C(remapped to 0x6D080651E648A1E9cFb64b6acE40AeDFA22Ed9Cd) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x6D080651E648A1E9cFb64b6acE40AeDFA22Ed9Cd | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xBBB06E98CF4E00c8cDA42c3C8b862de7cC3f520D(remapped to 0xFb53E23Aa75030a0Fe63Fc5BaB063393BD481BC1) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xFb53E23Aa75030a0Fe63Fc5BaB063393BD481BC1 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xFCb7d712eFc408D2b78Cd698f2025D1A85D83a84(remapped to 0x62Bc1e67F0B459a0c599DCc242BDc544FC8C55Ef) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x62Bc1e67F0B459a0c599DCc242BDc544FC8C55Ef | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x3B49C58fEca066328089cFFeBAF751ee2Afe71DE(remapped to 0xdeCF1564F576d600930aD39AEBF2DE71999f9d06) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xdeCF1564F576d600930aD39AEBF2DE71999f9d06 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x03D6DBaf9684C9bbA818A9bE1F66300e8DeEc8fB(remapped to 0xFad98Aa8416F4e50a41d5543b1be94A689780c84) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xFad98Aa8416F4e50a41d5543b1be94A689780c84 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x0F47FBBC2aB600cff2D8da94Dd53c8De11fA8EC2(remapped to 0x25d583a13A11cAa29d09F65941EE553A9f49B785) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x25d583a13A11cAa29d09F65941EE553A9f49B785 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xF5426f5D6F46Eb6a861adEdD37da9F3bd4EeB05B(remapped to 0xdA4f25Ff2a61E786aD0E7e75Ba4e0808850214f9) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xdA4f25Ff2a61E786aD0E7e75Ba4e0808850214f9 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x7A0Afb8c22D099e8d9353207c7053174b71F9fF0(remapped to 0x7159d5FEDab86f9F5D213818f47380bD0977348D) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x7159d5FEDab86f9F5D213818f47380bD0977348D | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*3*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xA1e2E8702c87DfB9B3882b319eEEf6cfF9E289Ad(remapped to 0x48088eeF795E7b54D7DCe2c90cCD88A47C0F5B6f) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x48088eeF795E7b54D7DCe2c90cCD88A47C0F5B6f | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x9BbA6A5A1289EB02Df3Ff4bB66d526d1f33ae92c(remapped to 0x945C6F783DB616bcd9a85497C913c421AA840b50) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x945C6F783DB616bcd9a85497C913c421AA840b50 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xd58cB804098D02aa6EF99982D04BAF36D784fA7F(remapped to 0x162898D449E60C008925edB5f05a06f115713831) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x162898D449E60C008925edB5f05a06f115713831 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xabb152795d0a1c12ced3b6c67839F8dfC1b69C98(remapped to 0x7741349bf24dA93368927D7B33bB3f372D547815) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x7741349bf24dA93368927D7B33bB3f372D547815 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xE65253613f215241c99567F89Cc814567a481116(remapped to 0xFdEb4107A806e85eC8a7a96107a05a0b00BAdE38) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xFdEb4107A806e85eC8a7a96107a05a0b00BAdE38 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xC13928e81b595D2256c9753fC7989Ac902d0CEE7(remapped to 0xFd2C77e7F02318096bA1Caccc88C87dABe309666) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xFd2C77e7F02318096bA1Caccc88C87dABe309666 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x83c85c0dd6F552a61743FA28F94c92C34Ba12F8a(remapped to 0x7f37F88655D215BBc371b5214d9a2de12584b0A8) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x7f37F88655D215BBc371b5214d9a2de12584b0A8 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xBc335622F9f0316D2435507aF3F543424906B7b5(remapped to 0xA1Fdb80C3e3a613a7Ae0CecFC5ED4C4036eD06f9) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xA1Fdb80C3e3a613a7Ae0CecFC5ED4C4036eD06f9 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 969 from 0xe2AFf99a29fADcd427b47b514b42ee5394913A01(remapped to 0x9DE8A2dBA4715d23e0042A78aEb9b3B32a4A11Fa) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 0e541fa78b69fe9655031a5f61813ad843440da2d62682f232655304db580030 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 970 from 0xe2AFf99a29fADcd427b47b514b42ee5394913A01(remapped to 0x9DE8A2dBA4715d23e0042A78aEb9b3B32a4A11Fa) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 0e541fa78b69fe9655031a5f61813ad843440da2d62682f232655304db580030 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 971 from 0x6c5F5b28B10d021bf947e626Bf4565C8957162B4(remapped to 0xDC2D5628238A31b7Cc86aDF52A8EFF8444E8d9a4) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 3db2d2298b31bd7fde7201fe135093a9d37add663254cf6ab0b4329fda6533e4 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 972 from 0x6c5F5b28B10d021bf947e626Bf4565C8957162B4(remapped to 0xDC2D5628238A31b7Cc86aDF52A8EFF8444E8d9a4) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 3db2d2298b31bd7fde7201fe135093a9d37add663254cf6ab0b4329fda6533e4 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 973 from 0x3D0fE89106005C4Dfe13b1DfdDFa6c012F0FbC45(remapped to 0x2c2Bdf0f5c7e3CC43dfF3Db87f4de0AF2ffeE338) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key c7b26105136e486ec41f4369b5718a2915b1b870afcd2ed263be5170e91ebebd --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 974 from 0x3D0fE89106005C4Dfe13b1DfdDFa6c012F0FbC45(remapped to 0x2c2Bdf0f5c7e3CC43dfF3Db87f4de0AF2ffeE338) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key c7b26105136e486ec41f4369b5718a2915b1b870afcd2ed263be5170e91ebebd --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 975 from 0x32BcEef44283dba687554010aCd79838aFAc8daf(remapped to 0x2063604e299f3D495fcBeA0C8E95AE05Fc2cc422) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 7d0a6dc6e58278ad39df441551ab25e17c12e8d4a0fa5d3f06b876157abd79d5 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 976 from 0x32BcEef44283dba687554010aCd79838aFAc8daf(remapped to 0x2063604e299f3D495fcBeA0C8E95AE05Fc2cc422) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 7d0a6dc6e58278ad39df441551ab25e17c12e8d4a0fa5d3f06b876157abd79d5 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 977 from 0x387c92d4D20731FA792c392D81f717f246b59d3f(remapped to 0x0598C21466eC6ac81279d41dcc50d2f2d281F677) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 7ec1baccf823752fa4c5f7e21ecc18c86a36e045a2553ab392264db95e183c53 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 978 from 0x387c92d4D20731FA792c392D81f717f246b59d3f(remapped to 0x0598C21466eC6ac81279d41dcc50d2f2d281F677) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 7ec1baccf823752fa4c5f7e21ecc18c86a36e045a2553ab392264db95e183c53 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 979 from 0xD3e613c808af8C79d0eAc680c97a55252Ed612E4(remapped to 0x47769790bE3b138d85Ba731A97336cc91101dC37) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 17f35821b8b4ef00ec7bfcd474a4b2781a47e132da95dbcd2c1e5b340d8e4355 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 980 from 0xD3e613c808af8C79d0eAc680c97a55252Ed612E4(remapped to 0x47769790bE3b138d85Ba731A97336cc91101dC37) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 17f35821b8b4ef00ec7bfcd474a4b2781a47e132da95dbcd2c1e5b340d8e4355 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 981 from 0xB0Fc229D18A7F912056a48b19DF7cEb81D5A11ce(remapped to 0xBbc879A18865e9c1b80E97440B109a2bd4b016a5) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 116a42ba9d94b5dc924f71cbf5506ef26bf877cebf686e519e8771ad07986347 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 982 from 0xB0Fc229D18A7F912056a48b19DF7cEb81D5A11ce(remapped to 0xBbc879A18865e9c1b80E97440B109a2bd4b016a5) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 116a42ba9d94b5dc924f71cbf5506ef26bf877cebf686e519e8771ad07986347 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 983 from 0xB5490DCbdCBE9fDd913BF9b875d49e2B1b1FB134(remapped to 0x7F127351Ee76633d77e8ae2Ca684910cd4B77229) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 826f2dcda4849a51a507a5765c6dba13761033b182c34ca28028ba8b2e150d19 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 984 from 0xB5490DCbdCBE9fDd913BF9b875d49e2B1b1FB134(remapped to 0x7F127351Ee76633d77e8ae2Ca684910cd4B77229) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 826f2dcda4849a51a507a5765c6dba13761033b182c34ca28028ba8b2e150d19 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 985 from 0xD8532747C5719E0e2A7BCaF4F554E280c537fC41(remapped to 0x214F46eA9E9552825BEBCF50a1e91CD1bfbA8dfb) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 2ba360bc1d53286fb14a22b996d5bb8591d060271edbbdbb49c4ffe860b2610a --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 986 from 0xD8532747C5719E0e2A7BCaF4F554E280c537fC41(remapped to 0x214F46eA9E9552825BEBCF50a1e91CD1bfbA8dfb) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 2ba360bc1d53286fb14a22b996d5bb8591d060271edbbdbb49c4ffe860b2610a --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 987 from 0x4C2B54bC284422ac56062dBFf1F8c37D85FACc52(remapped to 0xE6bF70eA01632488DD93ec0d1B0B759912b93137) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 3c36014394aab65c77d4ec59d6f1f7fc1f3cdf65fd6b2237b96592339eb712e7 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 988 from 0x4C2B54bC284422ac56062dBFf1F8c37D85FACc52(remapped to 0xE6bF70eA01632488DD93ec0d1B0B759912b93137) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 3c36014394aab65c77d4ec59d6f1f7fc1f3cdf65fd6b2237b96592339eb712e7 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 989 from 0x0f752cbdef4ef9A5F014bEF8db9824B7Bc4C4FA6(remapped to 0x0eb55fE7e528299BB9124b6a8f2DfDc35Be9BB4B) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 0497e2aec606a08c5f7bd00ea0c2d946cd5c30f4695590e6a091ad4508d35127 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 990 from 0x0f752cbdef4ef9A5F014bEF8db9824B7Bc4C4FA6(remapped to 0x0eb55fE7e528299BB9124b6a8f2DfDc35Be9BB4B) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 0497e2aec606a08c5f7bd00ea0c2d946cd5c30f4695590e6a091ad4508d35127 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 991 from 0xDA3F16869c64cF7B5d2Cac5B1db508A8e0675855(remapped to 0x0BF38B0c827e1a846e51E7DDf1084D43b692A425) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ea8b156fde9589cd0f576854bdb8076dd2dbd3fb841b2efd2feb0db24716ee03 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 992 from 0xDA3F16869c64cF7B5d2Cac5B1db508A8e0675855(remapped to 0x0BF38B0c827e1a846e51E7DDf1084D43b692A425) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ea8b156fde9589cd0f576854bdb8076dd2dbd3fb841b2efd2feb0db24716ee03 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 993 from 0xa17EEAd3AaaE02Db92F0f1DDEFb183B5265eDC14(remapped to 0x81C0828275c32E2fC7a6176aE02c17Fd6CB38BD7) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 2b7ce3409423d4b83ae61d1744d5fb6f5d5d93d902aea8a15566635e4fff1b4e --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 994 from 0xa17EEAd3AaaE02Db92F0f1DDEFb183B5265eDC14(remapped to 0x81C0828275c32E2fC7a6176aE02c17Fd6CB38BD7) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 2b7ce3409423d4b83ae61d1744d5fb6f5d5d93d902aea8a15566635e4fff1b4e --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 995 from 0xcc8B252a735FD1c4F0108ac34eb7859646Ce6fdE(remapped to 0x9ef3B905fEC09d0f15Fe4bCb7e5D78f520326FEf) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 50b0e6c92f65c11a28569286974b9d801750bb93a597e2ba3c0d526c671d3390 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 996 from 0xcc8B252a735FD1c4F0108ac34eb7859646Ce6fdE(remapped to 0x9ef3B905fEC09d0f15Fe4bCb7e5D78f520326FEf) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 50b0e6c92f65c11a28569286974b9d801750bb93a597e2ba3c0d526c671d3390 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 997 from 0xec0a4cA21deD8797394CEF1B800b17a9b1D3B9B8(remapped to 0xac98fcf2e9576d0ab66c55f4b01185c5AE7D5B77) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ca724d5832257166b1937a5e617b5d1433f2d4d9656f0738daaaf32c309fc81a --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 998 from 0xec0a4cA21deD8797394CEF1B800b17a9b1D3B9B8(remapped to 0xac98fcf2e9576d0ab66c55f4b01185c5AE7D5B77) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ca724d5832257166b1937a5e617b5d1433f2d4d9656f0738daaaf32c309fc81a --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 999 from 0x9141007e16C363Bf9cbE916C18E73F127aE7755E(remapped to 0x3C4A1805cbcF5a4a1E1068BDa1a74AD70730E60E) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 8937b1f6a72e5f5e481a92c5e79a6d1e29add9b848e9fd7bcfc9299d34ac7bca --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1000 from 0x9141007e16C363Bf9cbE916C18E73F127aE7755E(remapped to 0x3C4A1805cbcF5a4a1E1068BDa1a74AD70730E60E) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 8937b1f6a72e5f5e481a92c5e79a6d1e29add9b848e9fd7bcfc9299d34ac7bca --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1001 from 0xAF7b8037BB4034b833e25ddd3EC1Af2c86f50e04(remapped to 0x30c31c768C120C2d9ACAF7efA9B08E99AC09e9FE) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cbe1928f289d976e2f2bb39ce0d7f1b99dfdc84c575ab53f67d2fb2523231275 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1002 from 0xAF7b8037BB4034b833e25ddd3EC1Af2c86f50e04(remapped to 0x30c31c768C120C2d9ACAF7efA9B08E99AC09e9FE) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cbe1928f289d976e2f2bb39ce0d7f1b99dfdc84c575ab53f67d2fb2523231275 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1003 from 0xd38E4AC4BAC1464407B6AB25ECF371D1c52ADe82(remapped to 0x56Ca968e942530E7D388F0Ec87f8313BE496cD49) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b4d70d0605238de5219299175f3b07aa51578904aa8af55fd271a51c278144b4 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1004 from 0xd38E4AC4BAC1464407B6AB25ECF371D1c52ADe82(remapped to 0x56Ca968e942530E7D388F0Ec87f8313BE496cD49) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b4d70d0605238de5219299175f3b07aa51578904aa8af55fd271a51c278144b4 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1005 from 0x5c2DB6fB75d479996298C3605031ee71c0a56E71(remapped to 0x8120aA01b736C8B0D46fC3f1114df2a7707b7D7C) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 556f436b10b8f1f186ec28559fff0d0a641487ba6483c6c7ebbfb6dce3ed7576 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1006 from 0x5c2DB6fB75d479996298C3605031ee71c0a56E71(remapped to 0x8120aA01b736C8B0D46fC3f1114df2a7707b7D7C) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 556f436b10b8f1f186ec28559fff0d0a641487ba6483c6c7ebbfb6dce3ed7576 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1007 from 0x791456f824C01F05664cA04c7992b5264d5A65C7(remapped to 0xed3617d5d882653f9a11b4b1551B7F0A66B38923) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 6fff56bc505c7a8b6998b535546d590181964805ad2c9383995a329f25e0282e --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1008 from 0x791456f824C01F05664cA04c7992b5264d5A65C7(remapped to 0xed3617d5d882653f9a11b4b1551B7F0A66B38923) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 6fff56bc505c7a8b6998b535546d590181964805ad2c9383995a329f25e0282e --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1009 from 0xaDA7d6b05680CE6B44D95b18b3fC456122A41ED3(remapped to 0x401C68eaCA184874A3d7D5D71dE3F4bFb228E29b) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f5a9cb42f754c312596d248c4a876255124ec9ad8b390283c0bc2a8282415e19 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1010 from 0xaDA7d6b05680CE6B44D95b18b3fC456122A41ED3(remapped to 0x401C68eaCA184874A3d7D5D71dE3F4bFb228E29b) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f5a9cb42f754c312596d248c4a876255124ec9ad8b390283c0bc2a8282415e19 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1011 from 0xAcfd3a231687ac96492d86B7D6fA934a6277e0e8(remapped to 0x848A1EBe73cAf8E3Ad102dC0085190A577B860c4) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 40350d06f5b9459329c813d9a2350827c1f07ede1467a9407db51457e0782a7d --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1012 from 0xAcfd3a231687ac96492d86B7D6fA934a6277e0e8(remapped to 0x848A1EBe73cAf8E3Ad102dC0085190A577B860c4) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 40350d06f5b9459329c813d9a2350827c1f07ede1467a9407db51457e0782a7d --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1013 from 0x52A06923DF5C8f2469C50e0bB342027f675BA866(remapped to 0xbcA482A2583205fA5d6F640BA26Ea5a39C5c52a1) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 7715374a3cef09416f2a1abed783bba0e56c49f76021769adf3f550e4562a8cd --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1014 from 0x52A06923DF5C8f2469C50e0bB342027f675BA866(remapped to 0xbcA482A2583205fA5d6F640BA26Ea5a39C5c52a1) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 7715374a3cef09416f2a1abed783bba0e56c49f76021769adf3f550e4562a8cd --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1015 from 0x44016bAfDA4B2cf59D1ad410251E7B4b1FB60Fef(remapped to 0x7d8CC9D7dC691470E5d37DECcF4c6A04D186c7d0) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key c56433d48f55b0017a293aa5467adb212505914e9a8963841e1842c4da1ef0b0 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1016 from 0x44016bAfDA4B2cf59D1ad410251E7B4b1FB60Fef(remapped to 0x7d8CC9D7dC691470E5d37DECcF4c6A04D186c7d0) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key c56433d48f55b0017a293aa5467adb212505914e9a8963841e1842c4da1ef0b0 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1017 from 0xcF5714Ae240A4312B42Fa5E2a459B474C7C842c3(remapped to 0x1DbC99b9C1d3375775BcdCd54f44f1A1c0359F85) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f5e1bac162c23ac61213cc7daddc95c5a836179f7e270b666bb445c52cdc5f80 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1018 from 0xcF5714Ae240A4312B42Fa5E2a459B474C7C842c3(remapped to 0x1DbC99b9C1d3375775BcdCd54f44f1A1c0359F85) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f5e1bac162c23ac61213cc7daddc95c5a836179f7e270b666bb445c52cdc5f80 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1019 from 0xa326272dcf97185DD6d789926FF25485fe35CDe9(remapped to 0xF2f2f54aBb5Cc8aaB1fD0369Af209CfdCa026Eeb) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 4de92556db7bd635c0d5a5af2a529bb1f62ffb067d2190a0808bc0062f982faf --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1020 from 0xa326272dcf97185DD6d789926FF25485fe35CDe9(remapped to 0xF2f2f54aBb5Cc8aaB1fD0369Af209CfdCa026Eeb) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 4de92556db7bd635c0d5a5af2a529bb1f62ffb067d2190a0808bc0062f982faf --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1021 from 0xBC2643800ba5E6A8FCBE762a2975854604c880F1(remapped to 0x944ca58F3F7742Edb00B1a72Cfa49101c927a8af) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 453300766c1e5cbaf6f7c8343d1a213ed1396e6c4f088768cffc8d351615aa16 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1022 from 0xBC2643800ba5E6A8FCBE762a2975854604c880F1(remapped to 0x944ca58F3F7742Edb00B1a72Cfa49101c927a8af) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 453300766c1e5cbaf6f7c8343d1a213ed1396e6c4f088768cffc8d351615aa16 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1023 from 0x5066074702990C3C9CBB0d4Ee23BC8cfDDdCbdbd(remapped to 0xBcd48233615dd99Da6D1444c7568c0DdEd59fe8e) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 2431a63c61ee74fcb217ca69488155e41cc63fd3f5c317eb9a42e425468a76d0 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1024 from 0x5066074702990C3C9CBB0d4Ee23BC8cfDDdCbdbd(remapped to 0xBcd48233615dd99Da6D1444c7568c0DdEd59fe8e) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 2431a63c61ee74fcb217ca69488155e41cc63fd3f5c317eb9a42e425468a76d0 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1025 from 0xd5a7cAF6f763Fe3EdCA79E02AD3B883f49cA1623(remapped to 0x37cCC975d45770835Ca17C4358052AdDCE9B514F) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b35bee3e12d92820e41fcc17e42b9944ae39339eaee324c8a4b4094e45ecd397 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1026 from 0xd5a7cAF6f763Fe3EdCA79E02AD3B883f49cA1623(remapped to 0x37cCC975d45770835Ca17C4358052AdDCE9B514F) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b35bee3e12d92820e41fcc17e42b9944ae39339eaee324c8a4b4094e45ecd397 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1027 from 0x1Cd9A5576B17cedb2bEa763Aba549aE39Fce54c8(remapped to 0xBc1AD1C49943913B4D8AC404b9E6c5CcFF673d06) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 51423802ed5a3ae96896add78c1a962b68e1f928d38095b386bb5c1df8ae3f52 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1028 from 0x1Cd9A5576B17cedb2bEa763Aba549aE39Fce54c8(remapped to 0xBc1AD1C49943913B4D8AC404b9E6c5CcFF673d06) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 51423802ed5a3ae96896add78c1a962b68e1f928d38095b386bb5c1df8ae3f52 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1029 from 0xf5eb25F12c1D15365C52d6590d07E8360bE1DBFD(remapped to 0x90f72181Ad89fB17Fa8F3Ca6cfcefA61b507d73c) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 58552ebf968b277f6eac69a5c24570f44cb0d53a7f567d54d81d9e50bc68b90e --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1030 from 0xf5eb25F12c1D15365C52d6590d07E8360bE1DBFD(remapped to 0x90f72181Ad89fB17Fa8F3Ca6cfcefA61b507d73c) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 58552ebf968b277f6eac69a5c24570f44cb0d53a7f567d54d81d9e50bc68b90e --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1031 from 0x4e416F45E27A4B6a0229b829ed6330960248E909(remapped to 0xAEcF32F6136847593B0E2019900207A65b6B11a5) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 82bbb0cbda4b69f7a935fa6b87ea0ac96c7350a8ec239760b4bac4dcf5e7d785 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1032 from 0x4e416F45E27A4B6a0229b829ed6330960248E909(remapped to 0xAEcF32F6136847593B0E2019900207A65b6B11a5) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 82bbb0cbda4b69f7a935fa6b87ea0ac96c7350a8ec239760b4bac4dcf5e7d785 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1033 from 0x97AeB6967fBA4ddbbC93Cb12E74d42cFE794E120(remapped to 0x091e632f6c97d32dD7a24ccDCf84Db2585C6F142) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 125da11ded583995f6d027a1bce5fe92303fa66e06d39e68a1c121bb4ab665ed --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1034 from 0x97AeB6967fBA4ddbbC93Cb12E74d42cFE794E120(remapped to 0x091e632f6c97d32dD7a24ccDCf84Db2585C6F142) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 125da11ded583995f6d027a1bce5fe92303fa66e06d39e68a1c121bb4ab665ed --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1035 from 0xFA848a1574de8640CbBEC2F8d8fBC27807688552(remapped to 0x37fe2f29E47c4599D7E824487B0A0D4EC955fFcA) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 73cb0cce2bc3c378589bd29d4afdf20e2d2765ee28f18dac1de9b7342cf0c152 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1036 from 0xFA848a1574de8640CbBEC2F8d8fBC27807688552(remapped to 0x37fe2f29E47c4599D7E824487B0A0D4EC955fFcA) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 73cb0cce2bc3c378589bd29d4afdf20e2d2765ee28f18dac1de9b7342cf0c152 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1037 from 0x66B6cff53054e14e769d640186846b391B6884e0(remapped to 0xcF8AA919345b87cA998E29Cd72ffF3507f8A1A72) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 5d33286cc82ba26785b184742fbe9d0cfc345c2117080c5508cd47c6f43c93d8 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1038 from 0x66B6cff53054e14e769d640186846b391B6884e0(remapped to 0xcF8AA919345b87cA998E29Cd72ffF3507f8A1A72) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 5d33286cc82ba26785b184742fbe9d0cfc345c2117080c5508cd47c6f43c93d8 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1039 from 0xf4a6B2b8733936A39f514f113E057C908CD80fE1(remapped to 0xd2DAE39fAe233D91F1A5E3Cb71Ebc9def20cf5d3) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key c5a633bc37a5da75f8af3950eb3a2f17ad2e0f89781426d98ec55ab22ffc3b73 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1040 from 0xf4a6B2b8733936A39f514f113E057C908CD80fE1(remapped to 0xd2DAE39fAe233D91F1A5E3Cb71Ebc9def20cf5d3) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key c5a633bc37a5da75f8af3950eb3a2f17ad2e0f89781426d98ec55ab22ffc3b73 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1041 from 0x3d61FEA18e99Abf6D9cD85Bd016a6f1421ee4A3d(remapped to 0x07066fa3dDf831d8108292778Bc196d8a5C65A10) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 65a301474fbc33091e8d6ac4a8294debd6fa7ee8fbeab72e3ed29e5f9fba168f --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1042 from 0x3d61FEA18e99Abf6D9cD85Bd016a6f1421ee4A3d(remapped to 0x07066fa3dDf831d8108292778Bc196d8a5C65A10) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 65a301474fbc33091e8d6ac4a8294debd6fa7ee8fbeab72e3ed29e5f9fba168f --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1043 from 0x77836123dF51C841b2660A8A40A50372220e6683(remapped to 0x175F4512D36E538c982e964b313C63f4663f0D0E) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 17cf7a791d9a911dc16a3d069e7daf7511ad3b81987b677d2f7d1fbe060b7e02 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1044 from 0x77836123dF51C841b2660A8A40A50372220e6683(remapped to 0x175F4512D36E538c982e964b313C63f4663f0D0E) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 17cf7a791d9a911dc16a3d069e7daf7511ad3b81987b677d2f7d1fbe060b7e02 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1045 from 0xFa1B769d80D30AcAB7b8933146F86FfB450449f6(remapped to 0x56fDe39fDE63c5710b72e82dea9c9300adB28e51) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ebb339d9da29da94a39f63ba758d9641d5d5a5a88e7949ee47fad99e9cd697e6 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1046 from 0xFa1B769d80D30AcAB7b8933146F86FfB450449f6(remapped to 0x56fDe39fDE63c5710b72e82dea9c9300adB28e51) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ebb339d9da29da94a39f63ba758d9641d5d5a5a88e7949ee47fad99e9cd697e6 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1047 from 0xB20B0cD12dF53d413E4CcbafBA9Feb69a0407702(remapped to 0x2473ac9e143eD114570CC3E9088612A004f33d72) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key df8e10cdfac2af9c1de76751bb1c1fd8e319ec62dbf9d9a6aa555fca791362bf --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1048 from 0xB20B0cD12dF53d413E4CcbafBA9Feb69a0407702(remapped to 0x2473ac9e143eD114570CC3E9088612A004f33d72) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key df8e10cdfac2af9c1de76751bb1c1fd8e319ec62dbf9d9a6aa555fca791362bf --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1049 from 0xFf917528F4e72D9A7423d242bDbe7aac1b7c8064(remapped to 0x93f834Db03769B091e09B65e9D71f771c4f796de) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 3d1284e2e043103c8af0b72f634462d92cf238c981f0a934de3227d1107dd31e --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1050 from 0xFf917528F4e72D9A7423d242bDbe7aac1b7c8064(remapped to 0x93f834Db03769B091e09B65e9D71f771c4f796de) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 3d1284e2e043103c8af0b72f634462d92cf238c981f0a934de3227d1107dd31e --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1051 from 0x0787a271135c1E5AB4a4F51Af8A42A563E38CCD0(remapped to 0x927754FF9F2323d71c97b807fA19495E0656e28B) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key c68f76301a9a9760e32a1b3e8e5c912d8dc9953c82dc7520f81d8cf2a550a625 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1052 from 0x0787a271135c1E5AB4a4F51Af8A42A563E38CCD0(remapped to 0x927754FF9F2323d71c97b807fA19495E0656e28B) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key c68f76301a9a9760e32a1b3e8e5c912d8dc9953c82dc7520f81d8cf2a550a625 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1053 from 0x9826c750Fea6A0aBB02F1E5489ce23C471C74c92(remapped to 0x8144524c2Dce2ab68B96fCe6A5c01017Fd5eEf88) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 56145477960348b8564891285d0cfe58965af5dd33a52e4e0aa851008c510e26 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1054 from 0x9826c750Fea6A0aBB02F1E5489ce23C471C74c92(remapped to 0x8144524c2Dce2ab68B96fCe6A5c01017Fd5eEf88) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 56145477960348b8564891285d0cfe58965af5dd33a52e4e0aa851008c510e26 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1055 from 0xC069C44a5979a8AB081A97C4488DB9d44BFE67aC(remapped to 0x14d05e112B15ef34547E8bF7a1e5839a24903a6b) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 58e58a435f9de04a9209e2313f3473293bb78c9ccdbd43b1d0753bada42f9d43 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1056 from 0xC069C44a5979a8AB081A97C4488DB9d44BFE67aC(remapped to 0x14d05e112B15ef34547E8bF7a1e5839a24903a6b) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 58e58a435f9de04a9209e2313f3473293bb78c9ccdbd43b1d0753bada42f9d43 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1057 from 0xb2bCaBe26F9AF9a7Afcee95853C7E33554Bd219C(remapped to 0x6D080651E648A1E9cFb64b6acE40AeDFA22Ed9Cd) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 23aeafd21002ab26544531d6d4c320302bb7cc09055663f53c1f331b4c081e17 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1058 from 0xb2bCaBe26F9AF9a7Afcee95853C7E33554Bd219C(remapped to 0x6D080651E648A1E9cFb64b6acE40AeDFA22Ed9Cd) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 23aeafd21002ab26544531d6d4c320302bb7cc09055663f53c1f331b4c081e17 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1059 from 0xBBB06E98CF4E00c8cDA42c3C8b862de7cC3f520D(remapped to 0xFb53E23Aa75030a0Fe63Fc5BaB063393BD481BC1) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 13ca625b618c962310d6d0560ee5aafb52a58b4d77c0bbbd4ae5c93a6938103e --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1060 from 0xBBB06E98CF4E00c8cDA42c3C8b862de7cC3f520D(remapped to 0xFb53E23Aa75030a0Fe63Fc5BaB063393BD481BC1) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 13ca625b618c962310d6d0560ee5aafb52a58b4d77c0bbbd4ae5c93a6938103e --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1061 from 0xFCb7d712eFc408D2b78Cd698f2025D1A85D83a84(remapped to 0x62Bc1e67F0B459a0c599DCc242BDc544FC8C55Ef) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 16bf8ca6cc018c572ce692d1aa091c4c4d9c8a1520d5a9a280d919753158d238 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1062 from 0xFCb7d712eFc408D2b78Cd698f2025D1A85D83a84(remapped to 0x62Bc1e67F0B459a0c599DCc242BDc544FC8C55Ef) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 16bf8ca6cc018c572ce692d1aa091c4c4d9c8a1520d5a9a280d919753158d238 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1063 from 0x3B49C58fEca066328089cFFeBAF751ee2Afe71DE(remapped to 0xdeCF1564F576d600930aD39AEBF2DE71999f9d06) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f0dc10f14df812b31869934b731543530b80eb241dd2c30b26240b910bae8b98 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1064 from 0x3B49C58fEca066328089cFFeBAF751ee2Afe71DE(remapped to 0xdeCF1564F576d600930aD39AEBF2DE71999f9d06) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f0dc10f14df812b31869934b731543530b80eb241dd2c30b26240b910bae8b98 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1065 from 0x03D6DBaf9684C9bbA818A9bE1F66300e8DeEc8fB(remapped to 0xFad98Aa8416F4e50a41d5543b1be94A689780c84) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key de992f47b2831cb675beea77b254589c36c565577f2d71e0f95c63f88f41f412 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1066 from 0x03D6DBaf9684C9bbA818A9bE1F66300e8DeEc8fB(remapped to 0xFad98Aa8416F4e50a41d5543b1be94A689780c84) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key de992f47b2831cb675beea77b254589c36c565577f2d71e0f95c63f88f41f412 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1067 from 0x0F47FBBC2aB600cff2D8da94Dd53c8De11fA8EC2(remapped to 0x25d583a13A11cAa29d09F65941EE553A9f49B785) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 49d334762489fdeff65b8076165046bd35e3350ccdd1c6a6ae1f7a3acc8bd37e --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1068 from 0x0F47FBBC2aB600cff2D8da94Dd53c8De11fA8EC2(remapped to 0x25d583a13A11cAa29d09F65941EE553A9f49B785) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 49d334762489fdeff65b8076165046bd35e3350ccdd1c6a6ae1f7a3acc8bd37e --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1069 from 0xF5426f5D6F46Eb6a861adEdD37da9F3bd4EeB05B(remapped to 0xdA4f25Ff2a61E786aD0E7e75Ba4e0808850214f9) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 41eefc051e70c8a97c69dfebfdf92108a469c5b525282f179e9c0f71708705ec --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1070 from 0xF5426f5D6F46Eb6a861adEdD37da9F3bd4EeB05B(remapped to 0xdA4f25Ff2a61E786aD0E7e75Ba4e0808850214f9) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 41eefc051e70c8a97c69dfebfdf92108a469c5b525282f179e9c0f71708705ec --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1071 from 0x7A0Afb8c22D099e8d9353207c7053174b71F9fF0(remapped to 0x7159d5FEDab86f9F5D213818f47380bD0977348D) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 810e86c6c53dd216ca762b9e29c15d154b9b1825c46be99f6f2fa68ffe38e07a --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1072 from 0x7A0Afb8c22D099e8d9353207c7053174b71F9fF0(remapped to 0x7159d5FEDab86f9F5D213818f47380bD0977348D) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 810e86c6c53dd216ca762b9e29c15d154b9b1825c46be99f6f2fa68ffe38e07a --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1073 from 0xA1e2E8702c87DfB9B3882b319eEEf6cfF9E289Ad(remapped to 0x48088eeF795E7b54D7DCe2c90cCD88A47C0F5B6f) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 9990a6c04cc2027daccff0bcef11aa3aea983e5f24b05e0da21567d22b0ff577 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1074 from 0xA1e2E8702c87DfB9B3882b319eEEf6cfF9E289Ad(remapped to 0x48088eeF795E7b54D7DCe2c90cCD88A47C0F5B6f) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 9990a6c04cc2027daccff0bcef11aa3aea983e5f24b05e0da21567d22b0ff577 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1075 from 0xA1e2E8702c87DfB9B3882b319eEEf6cfF9E289Ad(remapped to 0x48088eeF795E7b54D7DCe2c90cCD88A47C0F5B6f) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 9990a6c04cc2027daccff0bcef11aa3aea983e5f24b05e0da21567d22b0ff577 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1076 from 0x9BbA6A5A1289EB02Df3Ff4bB66d526d1f33ae92c(remapped to 0x945C6F783DB616bcd9a85497C913c421AA840b50) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cbbaa1ec25cae05bda10413efdff43ba15e560cf0801541b94df2e94e79e6695 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1077 from 0x9BbA6A5A1289EB02Df3Ff4bB66d526d1f33ae92c(remapped to 0x945C6F783DB616bcd9a85497C913c421AA840b50) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cbbaa1ec25cae05bda10413efdff43ba15e560cf0801541b94df2e94e79e6695 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1078 from 0xd58cB804098D02aa6EF99982D04BAF36D784fA7F(remapped to 0x162898D449E60C008925edB5f05a06f115713831) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 873ac9face5c1b7f733d3794159db0c8cf08227fce1a81fed9e0fe20d18e2654 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1079 from 0xd58cB804098D02aa6EF99982D04BAF36D784fA7F(remapped to 0x162898D449E60C008925edB5f05a06f115713831) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 873ac9face5c1b7f733d3794159db0c8cf08227fce1a81fed9e0fe20d18e2654 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1080 from 0xabb152795d0a1c12ced3b6c67839F8dfC1b69C98(remapped to 0x7741349bf24dA93368927D7B33bB3f372D547815) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 68043755a294f41859562b91a31c2b60a06d15818efeefd9d71b31c511a4e003 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1081 from 0xabb152795d0a1c12ced3b6c67839F8dfC1b69C98(remapped to 0x7741349bf24dA93368927D7B33bB3f372D547815) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 68043755a294f41859562b91a31c2b60a06d15818efeefd9d71b31c511a4e003 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1082 from 0xE65253613f215241c99567F89Cc814567a481116(remapped to 0xFdEb4107A806e85eC8a7a96107a05a0b00BAdE38) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 2490541aeebeb50703589bddf343f87edf358d7d06035e61eee5cadea6ad2bca --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1083 from 0xE65253613f215241c99567F89Cc814567a481116(remapped to 0xFdEb4107A806e85eC8a7a96107a05a0b00BAdE38) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 2490541aeebeb50703589bddf343f87edf358d7d06035e61eee5cadea6ad2bca --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1084 from 0xC13928e81b595D2256c9753fC7989Ac902d0CEE7(remapped to 0xFd2C77e7F02318096bA1Caccc88C87dABe309666) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key c8c8e41e393eb2d7e1f00d9afc3bc54bdc07604347657d04ba7208022c1f1a0b --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1085 from 0xC13928e81b595D2256c9753fC7989Ac902d0CEE7(remapped to 0xFd2C77e7F02318096bA1Caccc88C87dABe309666) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key c8c8e41e393eb2d7e1f00d9afc3bc54bdc07604347657d04ba7208022c1f1a0b --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1086 from 0x83c85c0dd6F552a61743FA28F94c92C34Ba12F8a(remapped to 0x7f37F88655D215BBc371b5214d9a2de12584b0A8) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 861055a384b0a7345e27047b3d87ea443524a38b4589e0db11b733a64b2e196f --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1087 from 0x83c85c0dd6F552a61743FA28F94c92C34Ba12F8a(remapped to 0x7f37F88655D215BBc371b5214d9a2de12584b0A8) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 861055a384b0a7345e27047b3d87ea443524a38b4589e0db11b733a64b2e196f --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1088 from 0xBc335622F9f0316D2435507aF3F543424906B7b5(remapped to 0xA1Fdb80C3e3a613a7Ae0CecFC5ED4C4036eD06f9) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 3af7b54004556a327e237521dd86ab1e1aa7686d41cc9c0760aa0536ec8031a9 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1089 from 0xBc335622F9f0316D2435507aF3F543424906B7b5(remapped to 0xA1Fdb80C3e3a613a7Ae0CecFC5ED4C4036eD06f9) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 3af7b54004556a327e237521dd86ab1e1aa7686d41cc9c0760aa0536ec8031a9 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

