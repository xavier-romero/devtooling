# PRV_KEY for master sender 0xc99E08c46cb7F77B44f59a610a6965914626c56f
PRV_KEY=894377a1245362016047514ceeedb85efa4b2bec55b443c55bee6d47e5869443
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test intrinsic (src/BlockchainTestsFiller/ValidBlocks/bcEIP1559/intrinsicFiller.yml)"

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x7F3103703F77283423De53863Fd2da12D9d66076) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x7F3103703F77283423De53863Fd2da12D9d66076 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xe2AFf99a29fADcd427b47b514b42ee5394913A01(remapped to 0xc36CdD1D224cD5d154B5C384f365A7fEFEe2C5FA) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xc36CdD1D224cD5d154B5C384f365A7fEFEe2C5FA | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x6c5F5b28B10d021bf947e626Bf4565C8957162B4(remapped to 0x27E63DeB901bDb133000E4cDE44573eD960683f3) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x27E63DeB901bDb133000E4cDE44573eD960683f3 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x3D0fE89106005C4Dfe13b1DfdDFa6c012F0FbC45(remapped to 0xbB4014c58eb58B0277f2E630692721eC97832CCb) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xbB4014c58eb58B0277f2E630692721eC97832CCb | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x32BcEef44283dba687554010aCd79838aFAc8daf(remapped to 0x32a0F5c42AF23897Ed833aFbC434b2cF4a02F8F0) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x32a0F5c42AF23897Ed833aFbC434b2cF4a02F8F0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x387c92d4D20731FA792c392D81f717f246b59d3f(remapped to 0xC328371A8667E0dAB695e7A158D00084f580b72F) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xC328371A8667E0dAB695e7A158D00084f580b72F | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xD3e613c808af8C79d0eAc680c97a55252Ed612E4(remapped to 0x7906994324Bbbe67Cb6EC72baB76bced231824c4) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x7906994324Bbbe67Cb6EC72baB76bced231824c4 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xB0Fc229D18A7F912056a48b19DF7cEb81D5A11ce(remapped to 0x86EF3051b84f9EC2F0B60627C644Aa7e260342E0) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x86EF3051b84f9EC2F0B60627C644Aa7e260342E0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xB5490DCbdCBE9fDd913BF9b875d49e2B1b1FB134(remapped to 0xec3fb52dA1511f2759c36174F8bd38F575F91990) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xec3fb52dA1511f2759c36174F8bd38F575F91990 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xD8532747C5719E0e2A7BCaF4F554E280c537fC41(remapped to 0xBe6049aC644B6EE781Ab0A278Aa93123Ef1e2DD6) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xBe6049aC644B6EE781Ab0A278Aa93123Ef1e2DD6 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x4C2B54bC284422ac56062dBFf1F8c37D85FACc52(remapped to 0xd529f044faC89Ee5750a9b3340971579a40D573f) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xd529f044faC89Ee5750a9b3340971579a40D573f | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x0f752cbdef4ef9A5F014bEF8db9824B7Bc4C4FA6(remapped to 0x9C20b2c0D71805406a4bc1afd546290b9fEFCC97) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x9C20b2c0D71805406a4bc1afd546290b9fEFCC97 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xDA3F16869c64cF7B5d2Cac5B1db508A8e0675855(remapped to 0xF594bCD04FEbBD007Bf66A69aE84AD1164f11FE5) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xF594bCD04FEbBD007Bf66A69aE84AD1164f11FE5 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xa17EEAd3AaaE02Db92F0f1DDEFb183B5265eDC14(remapped to 0x812737D68E293AF833530C9aB3895C4834aec0aA) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x812737D68E293AF833530C9aB3895C4834aec0aA | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xcc8B252a735FD1c4F0108ac34eb7859646Ce6fdE(remapped to 0x579A67c52a26dd38d6C1F52CD8Dedc7efb76C2Ef) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x579A67c52a26dd38d6C1F52CD8Dedc7efb76C2Ef | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xec0a4cA21deD8797394CEF1B800b17a9b1D3B9B8(remapped to 0x7EF56fb4684E04C2cD9EA83A442AA47db34Ba1c5) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x7EF56fb4684E04C2cD9EA83A442AA47db34Ba1c5 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x9141007e16C363Bf9cbE916C18E73F127aE7755E(remapped to 0xDB2D13d8230dD2570203133a2a7c13E0eAc277b9) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xDB2D13d8230dD2570203133a2a7c13E0eAc277b9 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xAF7b8037BB4034b833e25ddd3EC1Af2c86f50e04(remapped to 0x55E92B2Bf6f3EAbcD7E79FF84bafC406d1b6e1D1) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x55E92B2Bf6f3EAbcD7E79FF84bafC406d1b6e1D1 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xd38E4AC4BAC1464407B6AB25ECF371D1c52ADe82(remapped to 0x4AA37Da74Fc6c2922CA2A7E15f9A342b433f2a56) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x4AA37Da74Fc6c2922CA2A7E15f9A342b433f2a56 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x5c2DB6fB75d479996298C3605031ee71c0a56E71(remapped to 0x53d758b4fDe7D607dC26667Ae68e886cb1A1A53e) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x53d758b4fDe7D607dC26667Ae68e886cb1A1A53e | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x791456f824C01F05664cA04c7992b5264d5A65C7(remapped to 0x2A97835B9307b5807942b1B517E4fc435bAC8075) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x2A97835B9307b5807942b1B517E4fc435bAC8075 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xaDA7d6b05680CE6B44D95b18b3fC456122A41ED3(remapped to 0xdd25c1B979C3BA524f94c2b14FAf515C56d56DC2) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xdd25c1B979C3BA524f94c2b14FAf515C56d56DC2 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xAcfd3a231687ac96492d86B7D6fA934a6277e0e8(remapped to 0x24746001019bF6a45EB2781cdc9a45E0DD5a2C84) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x24746001019bF6a45EB2781cdc9a45E0DD5a2C84 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x52A06923DF5C8f2469C50e0bB342027f675BA866(remapped to 0xa23B4ae1599827035901aec7347AeDF53E7D1795) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xa23B4ae1599827035901aec7347AeDF53E7D1795 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x44016bAfDA4B2cf59D1ad410251E7B4b1FB60Fef(remapped to 0x112d1ca9Cf7314d89615365B010BbcC23c6901a3) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x112d1ca9Cf7314d89615365B010BbcC23c6901a3 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xcF5714Ae240A4312B42Fa5E2a459B474C7C842c3(remapped to 0x0eC76B3A73CA63E2424380d4483D46966669601B) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x0eC76B3A73CA63E2424380d4483D46966669601B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xa326272dcf97185DD6d789926FF25485fe35CDe9(remapped to 0x7Ad1d50f7Dc6658086a2fC6aD2267aAcd490690d) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x7Ad1d50f7Dc6658086a2fC6aD2267aAcd490690d | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xBC2643800ba5E6A8FCBE762a2975854604c880F1(remapped to 0x8bB3EFdC719026023177c1CE741398355FF848c9) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x8bB3EFdC719026023177c1CE741398355FF848c9 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x5066074702990C3C9CBB0d4Ee23BC8cfDDdCbdbd(remapped to 0x6676bB15c65Dee408f29532ee1032a327bBB0EDD) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x6676bB15c65Dee408f29532ee1032a327bBB0EDD | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xd5a7cAF6f763Fe3EdCA79E02AD3B883f49cA1623(remapped to 0x82169eCbd75789Dc5278386e8696309D05B85d47) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x82169eCbd75789Dc5278386e8696309D05B85d47 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x1Cd9A5576B17cedb2bEa763Aba549aE39Fce54c8(remapped to 0x7460f679c702CF4036A151F198cE28f6c4167250) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x7460f679c702CF4036A151F198cE28f6c4167250 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xf5eb25F12c1D15365C52d6590d07E8360bE1DBFD(remapped to 0xA8c0Db06D26d9b8F5954FDD3da3662Df07E727D0) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xA8c0Db06D26d9b8F5954FDD3da3662Df07E727D0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x4e416F45E27A4B6a0229b829ed6330960248E909(remapped to 0xA8456a3d44bE2E0704d06b6E35fb4fEe9E4c7FEC) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xA8456a3d44bE2E0704d06b6E35fb4fEe9E4c7FEC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x97AeB6967fBA4ddbbC93Cb12E74d42cFE794E120(remapped to 0x8916E9193823997De9f1B8a0F37f00b875F04844) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x8916E9193823997De9f1B8a0F37f00b875F04844 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xFA848a1574de8640CbBEC2F8d8fBC27807688552(remapped to 0x0FA9E1018BF4c72c107916232904Fd108D6419dD) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x0FA9E1018BF4c72c107916232904Fd108D6419dD | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x66B6cff53054e14e769d640186846b391B6884e0(remapped to 0xBc0F908C8c18452F5F0fC12D805342e806d60095) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xBc0F908C8c18452F5F0fC12D805342e806d60095 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xf4a6B2b8733936A39f514f113E057C908CD80fE1(remapped to 0x5A06cd84b70CF1F67cC19efB398938c4caFA53d7) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x5A06cd84b70CF1F67cC19efB398938c4caFA53d7 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x3d61FEA18e99Abf6D9cD85Bd016a6f1421ee4A3d(remapped to 0xE1e6a0871d14286BF2C625f849826778584cd925) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xE1e6a0871d14286BF2C625f849826778584cd925 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x77836123dF51C841b2660A8A40A50372220e6683(remapped to 0xF5850c9A26222d3812b3f25E97dC617B64689fA9) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xF5850c9A26222d3812b3f25E97dC617B64689fA9 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xFa1B769d80D30AcAB7b8933146F86FfB450449f6(remapped to 0x4E035E3b0A032286146e4E28b40D596e58e698cE) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x4E035E3b0A032286146e4E28b40D596e58e698cE | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xB20B0cD12dF53d413E4CcbafBA9Feb69a0407702(remapped to 0x1c7505E8C3f6d1475957D278dEa4c8a4572EC144) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x1c7505E8C3f6d1475957D278dEa4c8a4572EC144 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xFf917528F4e72D9A7423d242bDbe7aac1b7c8064(remapped to 0x0af525630b9AC511bD1f8b06a0344d282eE2A8C4) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x0af525630b9AC511bD1f8b06a0344d282eE2A8C4 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x0787a271135c1E5AB4a4F51Af8A42A563E38CCD0(remapped to 0xB91AaC7fb9e3615a8b10aeFCda70a55D18C38635) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xB91AaC7fb9e3615a8b10aeFCda70a55D18C38635 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x9826c750Fea6A0aBB02F1E5489ce23C471C74c92(remapped to 0xb23a4a9BC16Da3408eBF13083769fB55ED81284f) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xb23a4a9BC16Da3408eBF13083769fB55ED81284f | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xC069C44a5979a8AB081A97C4488DB9d44BFE67aC(remapped to 0x94fD2951F90F1CE4dBe72e4f8588F4450c935EB2) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x94fD2951F90F1CE4dBe72e4f8588F4450c935EB2 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xb2bCaBe26F9AF9a7Afcee95853C7E33554Bd219C(remapped to 0x65be5902745378823832369ae6950546CEB8a34c) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x65be5902745378823832369ae6950546CEB8a34c | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xBBB06E98CF4E00c8cDA42c3C8b862de7cC3f520D(remapped to 0xf1d959204A4A70f25a38CcBEB9669d439E2608dC) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xf1d959204A4A70f25a38CcBEB9669d439E2608dC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xFCb7d712eFc408D2b78Cd698f2025D1A85D83a84(remapped to 0xeADBD5B4FDE1b83c5Cf8dAA27EA78cA28a9F606A) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xeADBD5B4FDE1b83c5Cf8dAA27EA78cA28a9F606A | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x3B49C58fEca066328089cFFeBAF751ee2Afe71DE(remapped to 0x2e9f93576d8aA723E46F0badd0Cabf220ac5e5b2) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x2e9f93576d8aA723E46F0badd0Cabf220ac5e5b2 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x03D6DBaf9684C9bbA818A9bE1F66300e8DeEc8fB(remapped to 0x652e59A102bEFd8052Ae69F6D5a6C7BccDB0f982) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x652e59A102bEFd8052Ae69F6D5a6C7BccDB0f982 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x0F47FBBC2aB600cff2D8da94Dd53c8De11fA8EC2(remapped to 0x5a4C0125032C90AE30eaC56cc2B35624185B1B09) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x5a4C0125032C90AE30eaC56cc2B35624185B1B09 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xF5426f5D6F46Eb6a861adEdD37da9F3bd4EeB05B(remapped to 0x8F31490f26443B91Db34cbF48d0F58ff58F2c1e7) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x8F31490f26443B91Db34cbF48d0F58ff58F2c1e7 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x7A0Afb8c22D099e8d9353207c7053174b71F9fF0(remapped to 0xb308Aa741Bd83d0EeFC1816e813909C1070550ce) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xb308Aa741Bd83d0EeFC1816e813909C1070550ce | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xA1e2E8702c87DfB9B3882b319eEEf6cfF9E289Ad(remapped to 0x30D9D9f4391dd8174e737c2Fcd75a16DcCcF0287) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x30D9D9f4391dd8174e737c2Fcd75a16DcCcF0287 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x9BbA6A5A1289EB02Df3Ff4bB66d526d1f33ae92c(remapped to 0xA382354CfE7f2b6699a6DbC5af51dA78Bd8fb8C9) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xA382354CfE7f2b6699a6DbC5af51dA78Bd8fb8C9 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xd58cB804098D02aa6EF99982D04BAF36D784fA7F(remapped to 0xaCF09215BA13552832B76fA5Ad757583e3E35085) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xaCF09215BA13552832B76fA5Ad757583e3E35085 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xabb152795d0a1c12ced3b6c67839F8dfC1b69C98(remapped to 0xA32E11443556cB65eda8AE0E1404Ef560f3D574F) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xA32E11443556cB65eda8AE0E1404Ef560f3D574F | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xE65253613f215241c99567F89Cc814567a481116(remapped to 0x30Fa4C7A8A9397F58Db9469Da2136BE7c4FcCE3b) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x30Fa4C7A8A9397F58Db9469Da2136BE7c4FcCE3b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xC13928e81b595D2256c9753fC7989Ac902d0CEE7(remapped to 0xf311dfA00B298CBeB15f4f7eDfBD20B332BCa650) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xf311dfA00B298CBeB15f4f7eDfBD20B332BCa650 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0x83c85c0dd6F552a61743FA28F94c92C34Ba12F8a(remapped to 0x6c422dFA3B50ED2a1ABc942cf872820aD9D0a7e8) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x6c422dFA3B50ED2a1ABc942cf872820aD9D0a7e8 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsic] Funding sender 0xBc335622F9f0316D2435507aF3F543424906B7b5(remapped to 0x8D77cAAE5633279fb328074DA2b4b971D8222D60) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x8D77cAAE5633279fb328074DA2b4b971D8222D60 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccc with code and balance 1099511627776..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 6300000003601260003963000000036000F33a4355 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

echo "[intrinsic] Creating receiver 0x1111111111111111111111111111111111111111 with code and balance 1099511627776..."
ADDR_1111111111111111111111111111111111111111=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 63000007a1601260003963000007a16000F3610020565b60006103e864174876e800833181038281049350505050919050565b61003d73e2aff99a29fadcd427b47b514b42ee5394913a01610004565b60005561005d736c5f5b28b10d021bf947e626bf4565c8957162b4610004565b60015561007d733d0fe89106005c4dfe13b1dfddfa6c012f0fbc45610004565b60025561009d7332bceef44283dba687554010acd79838afac8daf610004565b6003556100bd73387c92d4d20731fa792c392d81f717f246b59d3f610004565b6004556100dd73d3e613c808af8c79d0eac680c97a55252ed612e4610004565b6005556100fd73b0fc229d18a7f912056a48b19df7ceb81d5a11ce610004565b60065561011d73b5490dcbdcbe9fdd913bf9b875d49e2b1b1fb134610004565b60075561013d73d8532747c5719e0e2a7bcaf4f554e280c537fc41610004565b60085561015d734c2b54bc284422ac56062dbff1f8c37d85facc52610004565b60095561017d730f752cbdef4ef9a5f014bef8db9824b7bc4c4fa6610004565b600a5561019d73da3f16869c64cf7b5d2cac5b1db508a8e0675855610004565b600b556101bd73a17eead3aaae02db92f0f1ddefb183b5265edc14610004565b600c556101dd73cc8b252a735fd1c4f0108ac34eb7859646ce6fde610004565b600d556101fd73ec0a4ca21ded8797394cef1b800b17a9b1d3b9b8610004565b600e5561021d739141007e16c363bf9cbe916c18e73f127ae7755e610004565b600f5561023d73af7b8037bb4034b833e25ddd3ec1af2c86f50e04610004565b60105561025d73d38e4ac4bac1464407b6ab25ecf371d1c52ade82610004565b60115561027d735c2db6fb75d479996298c3605031ee71c0a56e71610004565b60125561029d73791456f824c01f05664ca04c7992b5264d5a65c7610004565b6013556102bd73ada7d6b05680ce6b44d95b18b3fc456122a41ed3610004565b6014556102dd73acfd3a231687ac96492d86b7d6fa934a6277e0e8610004565b6015556102fd7352a06923df5c8f2469c50e0bb342027f675ba866610004565b60165561031d7344016bafda4b2cf59d1ad410251e7b4b1fb60fef610004565b60175561033d73cf5714ae240a4312b42fa5e2a459b474c7c842c3610004565b60185561035d73a326272dcf97185dd6d789926ff25485fe35cde9610004565b60195561037d73bc2643800ba5e6a8fcbe762a2975854604c880f1610004565b601a5561039d735066074702990c3c9cbb0d4ee23bc8cfdddcbdbd610004565b601b556103bd73d5a7caf6f763fe3edca79e02ad3b883f49ca1623610004565b601c556103dd731cd9a5576b17cedb2bea763aba549ae39fce54c8610004565b601d556103fd73f5eb25f12c1d15365c52d6590d07e8360be1dbfd610004565b601e5561041d734e416f45e27a4b6a0229b829ed6330960248e909610004565b601f5561043d7397aeb6967fba4ddbbc93cb12e74d42cfe794e120610004565b60205561045d73fa848a1574de8640cbbec2f8d8fbc27807688552610004565b60215561047d7366b6cff53054e14e769d640186846b391b6884e0610004565b60225561049d73f4a6b2b8733936a39f514f113e057c908cd80fe1610004565b6023556104bd733d61fea18e99abf6d9cd85bd016a6f1421ee4a3d610004565b6024556104dd7377836123df51c841b2660a8a40a50372220e6683610004565b6025556104fd73fa1b769d80d30acab7b8933146f86ffb450449f6610004565b60265561051d73b20b0cd12df53d413e4ccbafba9feb69a0407702610004565b60275561053d73ff917528f4e72d9a7423d242bdbe7aac1b7c8064610004565b60285561055d730787a271135c1e5ab4a4f51af8a42a563e38ccd0610004565b60295561057d739826c750fea6a0abb02f1e5489ce23c471c74c92610004565b602a5561059d73c069c44a5979a8ab081a97c4488db9d44bfe67ac610004565b602b556105bd73b2bcabe26f9af9a7afcee95853c7e33554bd219c610004565b602c556105dd73bbb06e98cf4e00c8cda42c3c8b862de7cc3f520d610004565b602d556105fd73fcb7d712efc408d2b78cd698f2025d1a85d83a84610004565b602e5561061d733b49c58feca066328089cffebaf751ee2afe71de610004565b602f5561063d7303d6dbaf9684c9bba818a9be1f66300e8deec8fb610004565b60305561065d730f47fbbc2ab600cff2d8da94dd53c8de11fa8ec2610004565b60315561067d73f5426f5d6f46eb6a861adedd37da9f3bd4eeb05b610004565b60325561069d737a0afb8c22d099e8d9353207c7053174b71f9ff0610004565b6033556106bd73a1e2e8702c87dfb9b3882b319eeef6cff9e289ad610004565b6034556106dd739bba6a5a1289eb02df3ff4bb66d526d1f33ae92c610004565b6035556106fd73d58cb804098d02aa6ef99982d04baf36d784fa7f610004565b60365561071d73abb152795d0a1c12ced3b6c67839f8dfc1b69c98610004565b60375561073d73e65253613f215241c99567f89cc814567a481116610004565b60385561075d73c13928e81b595d2256c9753fc7989ac902d0cee7610004565b60395561077d7383c85c0dd6f552a61743fa28f94c92c34ba12f8a610004565b603a5561079d73bc335622f9f0316d2435507af3f543424906b7b5610004565b603b55 | jq -r .contractAddress)
echo $ADDR_1111111111111111111111111111111111111111

echo "[intrinsic] Processing transaction number 1250 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x7F3103703F77283423De53863Fd2da12D9d66076) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 03daa2e5ba233ebec05703005bf3c2e75af9f0afbb46abb5025868c2d8c0fdb6 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1251 from 0xe2AFf99a29fADcd427b47b514b42ee5394913A01(remapped to 0xc36CdD1D224cD5d154B5C384f365A7fEFEe2C5FA) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key cfc5c450c4f1dc7a76ab47a703ce4d87e67fc832dd8aa022af0254c1a1976919 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1252 from 0x6c5F5b28B10d021bf947e626Bf4565C8957162B4(remapped to 0x27E63DeB901bDb133000E4cDE44573eD960683f3) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 078054289c8b6218289aadf5d3bf1c0b6a4efcb0bb4b78b547111198a9c67b49 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1253 from 0x3D0fE89106005C4Dfe13b1DfdDFa6c012F0FbC45(remapped to 0xbB4014c58eb58B0277f2E630692721eC97832CCb) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 045245db649474d0ad7d90f40885e0a0180377d4a99559f17deee15fb0b531e2 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1254 from 0x32BcEef44283dba687554010aCd79838aFAc8daf(remapped to 0x32a0F5c42AF23897Ed833aFbC434b2cF4a02F8F0) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key aac186e995d3b6701898f681a32b67d6776ea31ddc94e1acbbbca7502ca97dce --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1255 from 0x387c92d4D20731FA792c392D81f717f246b59d3f(remapped to 0xC328371A8667E0dAB695e7A158D00084f580b72F) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key b4bfcd5d9294dfd1f5630c24a69076c39bfa76c194180e2a8f74725dc82afb37 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1256 from 0xD3e613c808af8C79d0eAc680c97a55252Ed612E4(remapped to 0x7906994324Bbbe67Cb6EC72baB76bced231824c4) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 2e938e1d090d78cc0c28a46a25f164610ad2c528a6226e644c8117df17f7b57e --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1257 from 0xB0Fc229D18A7F912056a48b19DF7cEb81D5A11ce(remapped to 0x86EF3051b84f9EC2F0B60627C644Aa7e260342E0) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key eb0de12b6dfd4d70839dd6c9996af521590c7f922600b4ab7e927b95d4f4a089 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1258 from 0xB5490DCbdCBE9fDd913BF9b875d49e2B1b1FB134(remapped to 0xec3fb52dA1511f2759c36174F8bd38F575F91990) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f8184f80ce6a4e4b029185a64fec099232a5c5f1bd4b45a2ae319a6dba956641 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1259 from 0xD8532747C5719E0e2A7BCaF4F554E280c537fC41(remapped to 0xBe6049aC644B6EE781Ab0A278Aa93123Ef1e2DD6) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key cc5a1dd446bcfe36c586bb007f30421ea87c78f8022614fe20e956f895edcd11 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1260 from 0x4C2B54bC284422ac56062dBFf1F8c37D85FACc52(remapped to 0xd529f044faC89Ee5750a9b3340971579a40D573f) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 0b5d783d68ed23b138f9c42d61cf95e4ab36f68210f5cc6028a8ec8f75b8747d --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1261 from 0x0f752cbdef4ef9A5F014bEF8db9824B7Bc4C4FA6(remapped to 0x9C20b2c0D71805406a4bc1afd546290b9fEFCC97) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e4889ab5f74b599d61039aa1550e361fdacbd03d29a4a3e152a5fe32071cef3a --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1262 from 0xDA3F16869c64cF7B5d2Cac5B1db508A8e0675855(remapped to 0xF594bCD04FEbBD007Bf66A69aE84AD1164f11FE5) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key d5f8b372a5839988bb89f5746a4acf076e70f8ec639e44701b48da1c4907608a --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1263 from 0xa17EEAd3AaaE02Db92F0f1DDEFb183B5265eDC14(remapped to 0x812737D68E293AF833530C9aB3895C4834aec0aA) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key cafe929b506dad452e451d22700c5f8971860c58a1e5473d31f7b0971baa9bb1 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1264 from 0xcc8B252a735FD1c4F0108ac34eb7859646Ce6fdE(remapped to 0x579A67c52a26dd38d6C1F52CD8Dedc7efb76C2Ef) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 720c6309149d4c14c45fee97e8c78ce9e859ae87ba1fdf1fa6831bd08788ba47 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1265 from 0xec0a4cA21deD8797394CEF1B800b17a9b1D3B9B8(remapped to 0x7EF56fb4684E04C2cD9EA83A442AA47db34Ba1c5) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 129ca1ae1fbf09b050c9de02d2c9930ce0d19d776a198c0c513ee765407137f7 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1266 from 0x9141007e16C363Bf9cbE916C18E73F127aE7755E(remapped to 0xDB2D13d8230dD2570203133a2a7c13E0eAc277b9) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 300d30737b18020c9dc86e1c80aadbdbb0f0edccaf7f04eb62a9e5c27d64000a --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1267 from 0xAF7b8037BB4034b833e25ddd3EC1Af2c86f50e04(remapped to 0x55E92B2Bf6f3EAbcD7E79FF84bafC406d1b6e1D1) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key d7eaa6f68adf917acccc277e78b6a9a4205dc69445517ab9469d8e99190535c3 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1268 from 0xd38E4AC4BAC1464407B6AB25ECF371D1c52ADe82(remapped to 0x4AA37Da74Fc6c2922CA2A7E15f9A342b433f2a56) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 4cbe9204c5527d7e0d03a08f06347c8ee62645ff87823e56a773b3d9e87f56a0 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1269 from 0x5c2DB6fB75d479996298C3605031ee71c0a56E71(remapped to 0x53d758b4fDe7D607dC26667Ae68e886cb1A1A53e) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 3c8e8788c2211c7701dc28b52f794f914343245cac1bd740f0b1bd27b550a4e6 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1270 from 0x791456f824C01F05664cA04c7992b5264d5A65C7(remapped to 0x2A97835B9307b5807942b1B517E4fc435bAC8075) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key b5823315d023c3e4a7c3d36a76b233b899c7db1da59a1e985be1a84c31d0f2a0 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1271 from 0xaDA7d6b05680CE6B44D95b18b3fC456122A41ED3(remapped to 0xdd25c1B979C3BA524f94c2b14FAf515C56d56DC2) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 00fd96c770c42ba070266100abf54da811d09f08125604257bb69a55c786c27f --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1272 from 0xAcfd3a231687ac96492d86B7D6fA934a6277e0e8(remapped to 0x24746001019bF6a45EB2781cdc9a45E0DD5a2C84) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 7b7076e5aad849d067a5c386fc54e1fca51d246d65a5825cd6689210fa68652c --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1273 from 0x52A06923DF5C8f2469C50e0bB342027f675BA866(remapped to 0xa23B4ae1599827035901aec7347AeDF53E7D1795) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c7b2b291aae12f46a12598c287f6b87c069496647fea6cfa8ec2f7dc1e2e2fec --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1274 from 0x44016bAfDA4B2cf59D1ad410251E7B4b1FB60Fef(remapped to 0x112d1ca9Cf7314d89615365B010BbcC23c6901a3) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 8485bd0c744f9dca2b545627ac75f10c5d6c8efe4348873782cb7725e617d9af --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1275 from 0xcF5714Ae240A4312B42Fa5E2a459B474C7C842c3(remapped to 0x0eC76B3A73CA63E2424380d4483D46966669601B) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 4bb5ac0568443c2f1ed33d9bd6126c2bf4dab1fcce7e492e4afb32c3169f10dd --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1276 from 0xa326272dcf97185DD6d789926FF25485fe35CDe9(remapped to 0x7Ad1d50f7Dc6658086a2fC6aD2267aAcd490690d) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 3b9e3e592b496ff95527d70d67cb1d602edcfc604ed043182bbeab6712100c28 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1277 from 0xBC2643800ba5E6A8FCBE762a2975854604c880F1(remapped to 0x8bB3EFdC719026023177c1CE741398355FF848c9) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 59e42fb33eb2bae812b248ceb1cdbe4eae508a046f0556b3929557fef7545fce --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1278 from 0x5066074702990C3C9CBB0d4Ee23BC8cfDDdCbdbd(remapped to 0x6676bB15c65Dee408f29532ee1032a327bBB0EDD) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 077ab2e18229f15acf6d1d73210b035bfd7bac111c783f8dcc22d9c1af844aac --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1279 from 0xd5a7cAF6f763Fe3EdCA79E02AD3B883f49cA1623(remapped to 0x82169eCbd75789Dc5278386e8696309D05B85d47) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 77186ff856a00d9299ee8db087a6c37546edaea9e1f8dc5bcc0bdd32b627672a --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1280 from 0x1Cd9A5576B17cedb2bEa763Aba549aE39Fce54c8(remapped to 0x7460f679c702CF4036A151F198cE28f6c4167250) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 7ade54aa8f6ba51e1f233dcbd5cf6e55f17f91bf9f37d922e79c209489390084 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1281 from 0xf5eb25F12c1D15365C52d6590d07E8360bE1DBFD(remapped to 0xA8c0Db06D26d9b8F5954FDD3da3662Df07E727D0) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 6b652b4bba35b06d2df44256744ce02ada9b853c3ff49b43284437a3bb85b656 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1282 from 0x4e416F45E27A4B6a0229b829ed6330960248E909(remapped to 0xA8456a3d44bE2E0704d06b6E35fb4fEe9E4c7FEC) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key a87a0ae1ca68cafa2f0d82869a58506bebc6da3fe3238b2dfed212424cfbf8b8 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1283 from 0x97AeB6967fBA4ddbbC93Cb12E74d42cFE794E120(remapped to 0x8916E9193823997De9f1B8a0F37f00b875F04844) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 699db38491efa2d3b90560f757e710bafbb80e0e5148a589613d2769a6b66abe --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1284 from 0xFA848a1574de8640CbBEC2F8d8fBC27807688552(remapped to 0x0FA9E1018BF4c72c107916232904Fd108D6419dD) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 5a9bca34ed49dd9aade126543faf2cf50226d7bc075375519840a5d3451c5d5b --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1285 from 0x66B6cff53054e14e769d640186846b391B6884e0(remapped to 0xBc0F908C8c18452F5F0fC12D805342e806d60095) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key d4e193b4d31d670bf65880c244dc7bbc8f7f4aa1c27994bf227a2e16e159a0be --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1286 from 0xf4a6B2b8733936A39f514f113E057C908CD80fE1(remapped to 0x5A06cd84b70CF1F67cC19efB398938c4caFA53d7) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e2f5c8c71e983db51f21ae585ed48a8c035dabf3c58f13917a6db86f083e8ac1 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1287 from 0x3d61FEA18e99Abf6D9cD85Bd016a6f1421ee4A3d(remapped to 0xE1e6a0871d14286BF2C625f849826778584cd925) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e0d1159b95bafb8860ad137827ac6b86b9e96e0e1d13b63675c19f343c9b249a --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1288 from 0x77836123dF51C841b2660A8A40A50372220e6683(remapped to 0xF5850c9A26222d3812b3f25E97dC617B64689fA9) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 0dbbe850978bfc45295183d325bff6ea33fd24494d7a3ae8c6c6dad86f30c476 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1289 from 0xFa1B769d80D30AcAB7b8933146F86FfB450449f6(remapped to 0x4E035E3b0A032286146e4E28b40D596e58e698cE) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 562206ad3c0353f7a91426793da4369985e2fcf11d3eda33c790df2082232815 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1290 from 0xB20B0cD12dF53d413E4CcbafBA9Feb69a0407702(remapped to 0x1c7505E8C3f6d1475957D278dEa4c8a4572EC144) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 7f5d5efbdd3f52ff941d629a45ae962b47899b5f07ccb580b4b7153c287ea155 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1291 from 0xFf917528F4e72D9A7423d242bDbe7aac1b7c8064(remapped to 0x0af525630b9AC511bD1f8b06a0344d282eE2A8C4) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 473b77aa322799a818ca0d4a36034674a16e26d689f0977d439a620eaf30df16 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1292 from 0x0787a271135c1E5AB4a4F51Af8A42A563E38CCD0(remapped to 0xB91AaC7fb9e3615a8b10aeFCda70a55D18C38635) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 67d17d695a24b7e4a29f7bf45500590261e5e8c1f79ed5d46296249f2ebc94dd --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1293 from 0x9826c750Fea6A0aBB02F1E5489ce23C471C74c92(remapped to 0xb23a4a9BC16Da3408eBF13083769fB55ED81284f) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key a17a3f6e3f98507a6e1fd6f31551795b17836c8d872c69cd02f0c0ba5f2c139a --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1294 from 0xC069C44a5979a8AB081A97C4488DB9d44BFE67aC(remapped to 0x94fD2951F90F1CE4dBe72e4f8588F4450c935EB2) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c63c4ca00a41ba5617e1c341209f44ff17e0166098acb005fcd4207072adead7 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1295 from 0xb2bCaBe26F9AF9a7Afcee95853C7E33554Bd219C(remapped to 0x65be5902745378823832369ae6950546CEB8a34c) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key cf8b3bb12a69fc2185cc7a817924226fa9c941c67bf236b3faa29fbc67e04086 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1296 from 0xBBB06E98CF4E00c8cDA42c3C8b862de7cC3f520D(remapped to 0xf1d959204A4A70f25a38CcBEB9669d439E2608dC) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key a977dd1fb378be225f449508729fd7d7f43bcda98c83fb75f4043421cc2127a6 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1297 from 0xFCb7d712eFc408D2b78Cd698f2025D1A85D83a84(remapped to 0xeADBD5B4FDE1b83c5Cf8dAA27EA78cA28a9F606A) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 8271b3d0b8ec030fd172ca915422c4481ec3d14703d249a74b69442bcf39a07b --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1298 from 0x3B49C58fEca066328089cFFeBAF751ee2Afe71DE(remapped to 0x2e9f93576d8aA723E46F0badd0Cabf220ac5e5b2) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f49414ff6f75fe8cb1806bb921ae53e6cb125733eb8cc9d1fbeb10a42b8348a5 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1299 from 0x03D6DBaf9684C9bbA818A9bE1F66300e8DeEc8fB(remapped to 0x652e59A102bEFd8052Ae69F6D5a6C7BccDB0f982) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 8e33b123fdee3d20b8fb09ffece2ae651f27f1feb642a0980d3cf453c244043d --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1300 from 0x0F47FBBC2aB600cff2D8da94Dd53c8De11fA8EC2(remapped to 0x5a4C0125032C90AE30eaC56cc2B35624185B1B09) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 8a48492dde34e4b47c24c0c7963cf059905d97551d000436e647a6e452a84e6f --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1301 from 0xF5426f5D6F46Eb6a861adEdD37da9F3bd4EeB05B(remapped to 0x8F31490f26443B91Db34cbF48d0F58ff58F2c1e7) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ecdc602b3ff63f75fd30c0381529aa9a12fd8f309095708deac583461708ff86 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1302 from 0x7A0Afb8c22D099e8d9353207c7053174b71F9fF0(remapped to 0xb308Aa741Bd83d0EeFC1816e813909C1070550ce) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key d80efe1537f4e252fb2064b5dc3b887505ffa3ccc7444a9f414b78afa48c229b --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1303 from 0xA1e2E8702c87DfB9B3882b319eEEf6cfF9E289Ad(remapped to 0x30D9D9f4391dd8174e737c2Fcd75a16DcCcF0287) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 0b084769e36b8f2f065892523fc1d8d52f1492826533b548a654275e159ff21d --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1304 from 0x9BbA6A5A1289EB02Df3Ff4bB66d526d1f33ae92c(remapped to 0xA382354CfE7f2b6699a6DbC5af51dA78Bd8fb8C9) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 1f92a222f6b6fafbfde9056c7fa3df38dabdf746879d084877facb8ae62c7dd2 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1305 from 0xd58cB804098D02aa6EF99982D04BAF36D784fA7F(remapped to 0xaCF09215BA13552832B76fA5Ad757583e3E35085) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key b770c4bac6de0fa3ac4f4affed0c4f3b7da880935b68a318579191919a1af451 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1306 from 0xabb152795d0a1c12ced3b6c67839F8dfC1b69C98(remapped to 0xA32E11443556cB65eda8AE0E1404Ef560f3D574F) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key fb6abd4222b6e7f5c6d932555526aafc3fb41415131d46e606bff930c7c9af1d --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1307 from 0xE65253613f215241c99567F89Cc814567a481116(remapped to 0x30Fa4C7A8A9397F58Db9469Da2136BE7c4FcCE3b) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 970f7395ddf3cd322c9fe03f1d587a83bc3323947220821fc7a581081f8fc283 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1308 from 0xC13928e81b595D2256c9753fC7989Ac902d0CEE7(remapped to 0xf311dfA00B298CBeB15f4f7eDfBD20B332BCa650) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 2e0e76fb9210f991681ed2d1dd281a37f4dbbbf386b781b1e2a1042f798f4671 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1309 from 0x83c85c0dd6F552a61743FA28F94c92C34Ba12F8a(remapped to 0x6c422dFA3B50ED2a1ABc942cf872820aD9D0a7e8) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 45d75b9b62842edde1ddf64742b4c9ad0087670ca8f32b900ab1f8cc4e09c9c4 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1310 from 0xBc335622F9f0316D2435507aF3F543424906B7b5(remapped to 0x8D77cAAE5633279fb328074DA2b4b971D8222D60) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key b457893bdec177ee4fe528394d8aa55222c2d23112c2b0febaaf446d7c1276d9 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsic] Processing transaction number 1311 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x7F3103703F77283423De53863Fd2da12D9d66076) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 03daa2e5ba233ebec05703005bf3c2e75af9f0afbb46abb5025868c2d8c0fdb6 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

