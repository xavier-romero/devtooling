# PRV_KEY for master sender 0xc7D29734414242Aee2c458c96E5ec45E45985d22
PRV_KEY=2f5c5535ee5bdcc73724a6dff42cc6f16213ea9f1509d090336ea08f8411e351
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test intrinsicOrFail (src/BlockchainTestsFiller/InvalidBlocks/bcEIP1559/intrinsicOrFailFiller.yml)"

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xe2AFf99a29fADcd427b47b514b42ee5394913A01(remapped to 0xC4fE77a1ff9FB96153Cab29a34d1c186cA683Cb0) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xC4fE77a1ff9FB96153Cab29a34d1c186cA683Cb0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x6c5F5b28B10d021bf947e626Bf4565C8957162B4(remapped to 0xeaF6E7499bDD2cc17e5cc693DC8Ac1d682dBD845) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xeaF6E7499bDD2cc17e5cc693DC8Ac1d682dBD845 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x3D0fE89106005C4Dfe13b1DfdDFa6c012F0FbC45(remapped to 0x82C3D961115F695E7983B5970A4475962Ed1d35B) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x82C3D961115F695E7983B5970A4475962Ed1d35B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x32BcEef44283dba687554010aCd79838aFAc8daf(remapped to 0xaA56A5c8a05CE00CB0Faf64427ad9d9414331205) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xaA56A5c8a05CE00CB0Faf64427ad9d9414331205 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x387c92d4D20731FA792c392D81f717f246b59d3f(remapped to 0xb65477059C96e1cDA3d973bb3a4cF949741Dd8a8) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xb65477059C96e1cDA3d973bb3a4cF949741Dd8a8 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xD3e613c808af8C79d0eAc680c97a55252Ed612E4(remapped to 0x67809ddb2f1c8fC7B0Ae7b09dD2f8eE469169999) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x67809ddb2f1c8fC7B0Ae7b09dD2f8eE469169999 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xB0Fc229D18A7F912056a48b19DF7cEb81D5A11ce(remapped to 0x02cb0E2d114D9B11957Ac20B82B3A45950236De9) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x02cb0E2d114D9B11957Ac20B82B3A45950236De9 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xB5490DCbdCBE9fDd913BF9b875d49e2B1b1FB134(remapped to 0x36283Cd2B248095292C74d37E7581D947cC0131B) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x36283Cd2B248095292C74d37E7581D947cC0131B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xD8532747C5719E0e2A7BCaF4F554E280c537fC41(remapped to 0xF44d26a4fee6007C2751ac5231dE839259Aa6c25) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xF44d26a4fee6007C2751ac5231dE839259Aa6c25 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x4C2B54bC284422ac56062dBFf1F8c37D85FACc52(remapped to 0x3157a242572F425dA3F584e851E9eb5AB37a759A) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x3157a242572F425dA3F584e851E9eb5AB37a759A | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x0f752cbdef4ef9A5F014bEF8db9824B7Bc4C4FA6(remapped to 0xB5A0F802235630e930583756848a85C5B14D7Cf2) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xB5A0F802235630e930583756848a85C5B14D7Cf2 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xDA3F16869c64cF7B5d2Cac5B1db508A8e0675855(remapped to 0x0a01308bf2c16011442D855c4D78a9562dfe4f53) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x0a01308bf2c16011442D855c4D78a9562dfe4f53 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xa17EEAd3AaaE02Db92F0f1DDEFb183B5265eDC14(remapped to 0x41b29E70331cDeA09BBb3BC39295605661C8742b) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x41b29E70331cDeA09BBb3BC39295605661C8742b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xcc8B252a735FD1c4F0108ac34eb7859646Ce6fdE(remapped to 0x5068E7b543635ef710c65dcD74fAE934c8Db31c2) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x5068E7b543635ef710c65dcD74fAE934c8Db31c2 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xec0a4cA21deD8797394CEF1B800b17a9b1D3B9B8(remapped to 0xfcc7D24423aD42C962eDb2dA6Dd30E300EF97307) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xfcc7D24423aD42C962eDb2dA6Dd30E300EF97307 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x9141007e16C363Bf9cbE916C18E73F127aE7755E(remapped to 0x3A2c936e85095F3560e86a185dBa634719A6AF16) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x3A2c936e85095F3560e86a185dBa634719A6AF16 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xAF7b8037BB4034b833e25ddd3EC1Af2c86f50e04(remapped to 0x0ddf03Bb8ED52CC6478629fDb21bD37E2503157C) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x0ddf03Bb8ED52CC6478629fDb21bD37E2503157C | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xd38E4AC4BAC1464407B6AB25ECF371D1c52ADe82(remapped to 0xBFD0cD4D9890D53959B3c462282C27498aF9017d) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xBFD0cD4D9890D53959B3c462282C27498aF9017d | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x5c2DB6fB75d479996298C3605031ee71c0a56E71(remapped to 0x102EC7873198e10676f574fB31C207acA95CDF4F) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x102EC7873198e10676f574fB31C207acA95CDF4F | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x791456f824C01F05664cA04c7992b5264d5A65C7(remapped to 0xE26FC455FFbb7Ecc631F2559758865150404fd8f) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xE26FC455FFbb7Ecc631F2559758865150404fd8f | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xaDA7d6b05680CE6B44D95b18b3fC456122A41ED3(remapped to 0xb48c19ae978BA83a659e37Fbd5c7735E3020c10E) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xb48c19ae978BA83a659e37Fbd5c7735E3020c10E | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xAcfd3a231687ac96492d86B7D6fA934a6277e0e8(remapped to 0x6F1600f18D4B90a7b8595d5C91474D5942985aEe) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x6F1600f18D4B90a7b8595d5C91474D5942985aEe | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x52A06923DF5C8f2469C50e0bB342027f675BA866(remapped to 0x8A1d70AD14854a00320572302E83d6e2C365F430) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x8A1d70AD14854a00320572302E83d6e2C365F430 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x44016bAfDA4B2cf59D1ad410251E7B4b1FB60Fef(remapped to 0xbdCB43b878Ea1137AE643b7eD53DD46d5B5448F2) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xbdCB43b878Ea1137AE643b7eD53DD46d5B5448F2 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xcF5714Ae240A4312B42Fa5E2a459B474C7C842c3(remapped to 0xB69c407B1D38DE69A86234FA37edB29Be447F2AB) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xB69c407B1D38DE69A86234FA37edB29Be447F2AB | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xa326272dcf97185DD6d789926FF25485fe35CDe9(remapped to 0xB2Fc7e47a42F0546771Bf4a1751eeA95a2Fc7768) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xB2Fc7e47a42F0546771Bf4a1751eeA95a2Fc7768 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xBC2643800ba5E6A8FCBE762a2975854604c880F1(remapped to 0x30985855594cF60E754e423347Bd693C25532a4E) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x30985855594cF60E754e423347Bd693C25532a4E | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x5066074702990C3C9CBB0d4Ee23BC8cfDDdCbdbd(remapped to 0xAE7BF4bB773ae78B9FFEA2d7edBbe54D02E8D5F8) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xAE7BF4bB773ae78B9FFEA2d7edBbe54D02E8D5F8 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xd5a7cAF6f763Fe3EdCA79E02AD3B883f49cA1623(remapped to 0xf520AAA0bE0343b5f8cc6eD4706ed5df4d3ecC90) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xf520AAA0bE0343b5f8cc6eD4706ed5df4d3ecC90 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x1Cd9A5576B17cedb2bEa763Aba549aE39Fce54c8(remapped to 0x2d5D4144B2368AFfaf5805C4d74E047752056A82) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x2d5D4144B2368AFfaf5805C4d74E047752056A82 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xf5eb25F12c1D15365C52d6590d07E8360bE1DBFD(remapped to 0x54c499Fb5b7e750fFDa5fb8Ed72fF298a7c994FD) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x54c499Fb5b7e750fFDa5fb8Ed72fF298a7c994FD | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x4e416F45E27A4B6a0229b829ed6330960248E909(remapped to 0x8A8a06D03693a54a32bE836fb32Df0c17C1b9651) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x8A8a06D03693a54a32bE836fb32Df0c17C1b9651 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x97AeB6967fBA4ddbbC93Cb12E74d42cFE794E120(remapped to 0x404F1f1D68afe5c2517c689738cA71d73dD65E91) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x404F1f1D68afe5c2517c689738cA71d73dD65E91 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xFA848a1574de8640CbBEC2F8d8fBC27807688552(remapped to 0x94d27bdd765d8e3502A09a56f3Df2d247D5cdbC2) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x94d27bdd765d8e3502A09a56f3Df2d247D5cdbC2 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x66B6cff53054e14e769d640186846b391B6884e0(remapped to 0xaFB446AC39eD5F7dfF0080AdB0faF48334440520) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xaFB446AC39eD5F7dfF0080AdB0faF48334440520 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xf4a6B2b8733936A39f514f113E057C908CD80fE1(remapped to 0x363f5Ee4045C05407dFEB52F28a71E4392a10b91) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x363f5Ee4045C05407dFEB52F28a71E4392a10b91 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x3d61FEA18e99Abf6D9cD85Bd016a6f1421ee4A3d(remapped to 0xA303D425cE538ae4042AF7Edc372fd39cCC8e198) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xA303D425cE538ae4042AF7Edc372fd39cCC8e198 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x77836123dF51C841b2660A8A40A50372220e6683(remapped to 0x25C8f63B35928DFc1c042FD6d97539D8563b7Fe4) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x25C8f63B35928DFc1c042FD6d97539D8563b7Fe4 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xFa1B769d80D30AcAB7b8933146F86FfB450449f6(remapped to 0x9469D99f25AfCb8Dda87499023375d165DadCF08) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x9469D99f25AfCb8Dda87499023375d165DadCF08 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xB20B0cD12dF53d413E4CcbafBA9Feb69a0407702(remapped to 0x87D4d26297858A3640f4E48b3A1d47134DCd5A79) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x87D4d26297858A3640f4E48b3A1d47134DCd5A79 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xFf917528F4e72D9A7423d242bDbe7aac1b7c8064(remapped to 0x56779b9159493bDe80422Fd613AF56FcA7C5978C) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x56779b9159493bDe80422Fd613AF56FcA7C5978C | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x0787a271135c1E5AB4a4F51Af8A42A563E38CCD0(remapped to 0xaDEC4a52e28d46dE6D980DD59c6D8a7557Af287A) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xaDEC4a52e28d46dE6D980DD59c6D8a7557Af287A | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x9826c750Fea6A0aBB02F1E5489ce23C471C74c92(remapped to 0x15E7308c0312FBb9783E8150C25c95C2d1Ec9453) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x15E7308c0312FBb9783E8150C25c95C2d1Ec9453 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xC069C44a5979a8AB081A97C4488DB9d44BFE67aC(remapped to 0xb8514080a5749570b1118210EbfBe1a36Cfd415b) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xb8514080a5749570b1118210EbfBe1a36Cfd415b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xb2bCaBe26F9AF9a7Afcee95853C7E33554Bd219C(remapped to 0x31463eaF7364F765F84eb17a5f7b945e6CAD8191) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x31463eaF7364F765F84eb17a5f7b945e6CAD8191 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xBBB06E98CF4E00c8cDA42c3C8b862de7cC3f520D(remapped to 0xC7ce6AC259C706684bf5c7b36db02B08E44Fe64D) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xC7ce6AC259C706684bf5c7b36db02B08E44Fe64D | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xFCb7d712eFc408D2b78Cd698f2025D1A85D83a84(remapped to 0x8456c84b5cB613C61B8476C524634dC45AC10244) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x8456c84b5cB613C61B8476C524634dC45AC10244 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x3B49C58fEca066328089cFFeBAF751ee2Afe71DE(remapped to 0xd8B063092De57fbe24Fc1572A54B134fb503C249) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xd8B063092De57fbe24Fc1572A54B134fb503C249 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x03D6DBaf9684C9bbA818A9bE1F66300e8DeEc8fB(remapped to 0xc0E94C7252BE5c5Fd2FfB04862Aff5f6705bf841) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xc0E94C7252BE5c5Fd2FfB04862Aff5f6705bf841 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x0F47FBBC2aB600cff2D8da94Dd53c8De11fA8EC2(remapped to 0x118507c3761c1f0789Ed4566532E02f199B1a7CB) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x118507c3761c1f0789Ed4566532E02f199B1a7CB | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xF5426f5D6F46Eb6a861adEdD37da9F3bd4EeB05B(remapped to 0x330dC67aE2f8759c7FB105B5A25fC804d3dcF1C5) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x330dC67aE2f8759c7FB105B5A25fC804d3dcF1C5 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x7A0Afb8c22D099e8d9353207c7053174b71F9fF0(remapped to 0x8925A905bC25Fc5f098F523C2D4C87BBc32aB4A3) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x8925A905bC25Fc5f098F523C2D4C87BBc32aB4A3 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*3*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xA1e2E8702c87DfB9B3882b319eEEf6cfF9E289Ad(remapped to 0x6c141eDD397De41F10b4CAe6e2E73eE1aE89a648) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x6c141eDD397De41F10b4CAe6e2E73eE1aE89a648 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x9BbA6A5A1289EB02Df3Ff4bB66d526d1f33ae92c(remapped to 0x44A0fCA53a684E22185836265BDcbfda02E996Dd) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x44A0fCA53a684E22185836265BDcbfda02E996Dd | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xd58cB804098D02aa6EF99982D04BAF36D784fA7F(remapped to 0xEA7e6DDD56C68F30D0a2A6fB1dfd510343e50D2e) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xEA7e6DDD56C68F30D0a2A6fB1dfd510343e50D2e | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xabb152795d0a1c12ced3b6c67839F8dfC1b69C98(remapped to 0x6b68a0e4c6234faFd78ad5405550Ee12C3c89693) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x6b68a0e4c6234faFd78ad5405550Ee12C3c89693 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xE65253613f215241c99567F89Cc814567a481116(remapped to 0xb7C7f63b23e65e90cfaEDf8e0Ae25FF9f453D192) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xb7C7f63b23e65e90cfaEDf8e0Ae25FF9f453D192 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xC13928e81b595D2256c9753fC7989Ac902d0CEE7(remapped to 0x7440d93ab7244b3DFB1688AB1d281dBdf56018C6) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x7440d93ab7244b3DFB1688AB1d281dBdf56018C6 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0x83c85c0dd6F552a61743FA28F94c92C34Ba12F8a(remapped to 0x089980ED4a6242919cb1edE95BC045C8A6D49dad) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x089980ED4a6242919cb1edE95BC045C8A6D49dad | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicOrFail] Funding sender 0xBc335622F9f0316D2435507aF3F543424906B7b5(remapped to 0x75B2e908Bae0A976D34860C0ae6F9c468faa1bce) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x75B2e908Bae0A976D34860C0ae6F9c468faa1bce | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 969 from 0xe2AFf99a29fADcd427b47b514b42ee5394913A01(remapped to 0xC4fE77a1ff9FB96153Cab29a34d1c186cA683Cb0) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 449529c8f7eb644554a92cae1edc17710b291e497df2da46b8677a4fad5fdb88 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 970 from 0xe2AFf99a29fADcd427b47b514b42ee5394913A01(remapped to 0xC4fE77a1ff9FB96153Cab29a34d1c186cA683Cb0) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 449529c8f7eb644554a92cae1edc17710b291e497df2da46b8677a4fad5fdb88 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 971 from 0x6c5F5b28B10d021bf947e626Bf4565C8957162B4(remapped to 0xeaF6E7499bDD2cc17e5cc693DC8Ac1d682dBD845) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 996e8c8810b118a5adc9c279dbe95f17b3211e9d31eb2d5212018af01a399eae --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 972 from 0x6c5F5b28B10d021bf947e626Bf4565C8957162B4(remapped to 0xeaF6E7499bDD2cc17e5cc693DC8Ac1d682dBD845) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 996e8c8810b118a5adc9c279dbe95f17b3211e9d31eb2d5212018af01a399eae --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 973 from 0x3D0fE89106005C4Dfe13b1DfdDFa6c012F0FbC45(remapped to 0x82C3D961115F695E7983B5970A4475962Ed1d35B) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ceb4fe35612ef5ee9063aa1ea00bfc7054779a78041a3f21f7c074d5e5fb6290 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 974 from 0x3D0fE89106005C4Dfe13b1DfdDFa6c012F0FbC45(remapped to 0x82C3D961115F695E7983B5970A4475962Ed1d35B) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ceb4fe35612ef5ee9063aa1ea00bfc7054779a78041a3f21f7c074d5e5fb6290 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 975 from 0x32BcEef44283dba687554010aCd79838aFAc8daf(remapped to 0xaA56A5c8a05CE00CB0Faf64427ad9d9414331205) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 62e01bd162931697ec40bd41fb776a473fac84eabee8aa8bd0a68226183ad149 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 976 from 0x32BcEef44283dba687554010aCd79838aFAc8daf(remapped to 0xaA56A5c8a05CE00CB0Faf64427ad9d9414331205) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 62e01bd162931697ec40bd41fb776a473fac84eabee8aa8bd0a68226183ad149 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 977 from 0x387c92d4D20731FA792c392D81f717f246b59d3f(remapped to 0xb65477059C96e1cDA3d973bb3a4cF949741Dd8a8) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e2ded6f5111c424f27b84c055e1bdaa9676d5854ea8237268efc2f21d84e3d11 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 978 from 0x387c92d4D20731FA792c392D81f717f246b59d3f(remapped to 0xb65477059C96e1cDA3d973bb3a4cF949741Dd8a8) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e2ded6f5111c424f27b84c055e1bdaa9676d5854ea8237268efc2f21d84e3d11 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 979 from 0xD3e613c808af8C79d0eAc680c97a55252Ed612E4(remapped to 0x67809ddb2f1c8fC7B0Ae7b09dD2f8eE469169999) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 079eda433b7c6620564d63efe80c2847df7ec5623a7b7cfcebe353c961048804 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 980 from 0xD3e613c808af8C79d0eAc680c97a55252Ed612E4(remapped to 0x67809ddb2f1c8fC7B0Ae7b09dD2f8eE469169999) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 079eda433b7c6620564d63efe80c2847df7ec5623a7b7cfcebe353c961048804 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 981 from 0xB0Fc229D18A7F912056a48b19DF7cEb81D5A11ce(remapped to 0x02cb0E2d114D9B11957Ac20B82B3A45950236De9) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key b6d64905eeebf7f96b26de3f8b953e1b5f8b92ab8c8cf027d6df33fdeb36ce36 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 982 from 0xB0Fc229D18A7F912056a48b19DF7cEb81D5A11ce(remapped to 0x02cb0E2d114D9B11957Ac20B82B3A45950236De9) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key b6d64905eeebf7f96b26de3f8b953e1b5f8b92ab8c8cf027d6df33fdeb36ce36 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 983 from 0xB5490DCbdCBE9fDd913BF9b875d49e2B1b1FB134(remapped to 0x36283Cd2B248095292C74d37E7581D947cC0131B) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key dc6ea1d43323a8038ca3430b34a74ef22b767115684c72fe3e22dd49e3ed3470 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 984 from 0xB5490DCbdCBE9fDd913BF9b875d49e2B1b1FB134(remapped to 0x36283Cd2B248095292C74d37E7581D947cC0131B) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key dc6ea1d43323a8038ca3430b34a74ef22b767115684c72fe3e22dd49e3ed3470 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 985 from 0xD8532747C5719E0e2A7BCaF4F554E280c537fC41(remapped to 0xF44d26a4fee6007C2751ac5231dE839259Aa6c25) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 2712b446eda2f534692ac14be310a53f517cd5cb4393139f2e56765140675594 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 986 from 0xD8532747C5719E0e2A7BCaF4F554E280c537fC41(remapped to 0xF44d26a4fee6007C2751ac5231dE839259Aa6c25) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 2712b446eda2f534692ac14be310a53f517cd5cb4393139f2e56765140675594 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 987 from 0x4C2B54bC284422ac56062dBFf1F8c37D85FACc52(remapped to 0x3157a242572F425dA3F584e851E9eb5AB37a759A) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 7e997c343c5baa8dc3ca2f5c6ed85d9ab04d867f44eae66cbd059a2ec5e7e184 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 988 from 0x4C2B54bC284422ac56062dBFf1F8c37D85FACc52(remapped to 0x3157a242572F425dA3F584e851E9eb5AB37a759A) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 7e997c343c5baa8dc3ca2f5c6ed85d9ab04d867f44eae66cbd059a2ec5e7e184 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 989 from 0x0f752cbdef4ef9A5F014bEF8db9824B7Bc4C4FA6(remapped to 0xB5A0F802235630e930583756848a85C5B14D7Cf2) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 5707ceed823c72c9476834e1f62a271f409d4fb43920b88cb9c7f19560baab3a --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 990 from 0x0f752cbdef4ef9A5F014bEF8db9824B7Bc4C4FA6(remapped to 0xB5A0F802235630e930583756848a85C5B14D7Cf2) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 5707ceed823c72c9476834e1f62a271f409d4fb43920b88cb9c7f19560baab3a --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 991 from 0xDA3F16869c64cF7B5d2Cac5B1db508A8e0675855(remapped to 0x0a01308bf2c16011442D855c4D78a9562dfe4f53) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 50bd6c5f0f89ee0036a7b48b5043f37b28bf35dc1de0357dc7f49fee7da41adc --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 992 from 0xDA3F16869c64cF7B5d2Cac5B1db508A8e0675855(remapped to 0x0a01308bf2c16011442D855c4D78a9562dfe4f53) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 50bd6c5f0f89ee0036a7b48b5043f37b28bf35dc1de0357dc7f49fee7da41adc --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 993 from 0xa17EEAd3AaaE02Db92F0f1DDEFb183B5265eDC14(remapped to 0x41b29E70331cDeA09BBb3BC39295605661C8742b) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 43441a31d3476373b534840986e9082a2789e8f7e78c7f9887d1a12c87b9cf72 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 994 from 0xa17EEAd3AaaE02Db92F0f1DDEFb183B5265eDC14(remapped to 0x41b29E70331cDeA09BBb3BC39295605661C8742b) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 43441a31d3476373b534840986e9082a2789e8f7e78c7f9887d1a12c87b9cf72 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 995 from 0xcc8B252a735FD1c4F0108ac34eb7859646Ce6fdE(remapped to 0x5068E7b543635ef710c65dcD74fAE934c8Db31c2) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key db229efa868de02a5a591b452859c78a7cd5f968539b3a4673b59c9ed295389f --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 996 from 0xcc8B252a735FD1c4F0108ac34eb7859646Ce6fdE(remapped to 0x5068E7b543635ef710c65dcD74fAE934c8Db31c2) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key db229efa868de02a5a591b452859c78a7cd5f968539b3a4673b59c9ed295389f --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 997 from 0xec0a4cA21deD8797394CEF1B800b17a9b1D3B9B8(remapped to 0xfcc7D24423aD42C962eDb2dA6Dd30E300EF97307) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 2dbbb2ef8e8e565ac8ec1925b0381610f68e877ee23ad1aeb5a0a16ca7894ca1 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 998 from 0xec0a4cA21deD8797394CEF1B800b17a9b1D3B9B8(remapped to 0xfcc7D24423aD42C962eDb2dA6Dd30E300EF97307) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 2dbbb2ef8e8e565ac8ec1925b0381610f68e877ee23ad1aeb5a0a16ca7894ca1 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 999 from 0x9141007e16C363Bf9cbE916C18E73F127aE7755E(remapped to 0x3A2c936e85095F3560e86a185dBa634719A6AF16) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 1fb59d7d6f7b2d57b409db14c10bced88a70f398de11183b0dfc04cfec059162 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1000 from 0x9141007e16C363Bf9cbE916C18E73F127aE7755E(remapped to 0x3A2c936e85095F3560e86a185dBa634719A6AF16) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 1fb59d7d6f7b2d57b409db14c10bced88a70f398de11183b0dfc04cfec059162 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1001 from 0xAF7b8037BB4034b833e25ddd3EC1Af2c86f50e04(remapped to 0x0ddf03Bb8ED52CC6478629fDb21bD37E2503157C) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 1a5661da6a0c0262afb8291c9b078e1f82b8241e0a397e7bb7fa1f42b450a988 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1002 from 0xAF7b8037BB4034b833e25ddd3EC1Af2c86f50e04(remapped to 0x0ddf03Bb8ED52CC6478629fDb21bD37E2503157C) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 1a5661da6a0c0262afb8291c9b078e1f82b8241e0a397e7bb7fa1f42b450a988 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1003 from 0xd38E4AC4BAC1464407B6AB25ECF371D1c52ADe82(remapped to 0xBFD0cD4D9890D53959B3c462282C27498aF9017d) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 5c167fd414c97ff6c86d5f992ae65d5e26c126b3926b5d8c45ce7b6b7cf73c8b --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1004 from 0xd38E4AC4BAC1464407B6AB25ECF371D1c52ADe82(remapped to 0xBFD0cD4D9890D53959B3c462282C27498aF9017d) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 5c167fd414c97ff6c86d5f992ae65d5e26c126b3926b5d8c45ce7b6b7cf73c8b --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1005 from 0x5c2DB6fB75d479996298C3605031ee71c0a56E71(remapped to 0x102EC7873198e10676f574fB31C207acA95CDF4F) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key fba014b22ebd6400f950877de6802328e185d1aa980f71ea5ad7a3dfb7b827e4 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1006 from 0x5c2DB6fB75d479996298C3605031ee71c0a56E71(remapped to 0x102EC7873198e10676f574fB31C207acA95CDF4F) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key fba014b22ebd6400f950877de6802328e185d1aa980f71ea5ad7a3dfb7b827e4 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1007 from 0x791456f824C01F05664cA04c7992b5264d5A65C7(remapped to 0xE26FC455FFbb7Ecc631F2559758865150404fd8f) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 94ce2cc7442869bbc5324842c27980007f370c52529164ab4a9c8cf0c8b65fee --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1008 from 0x791456f824C01F05664cA04c7992b5264d5A65C7(remapped to 0xE26FC455FFbb7Ecc631F2559758865150404fd8f) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 94ce2cc7442869bbc5324842c27980007f370c52529164ab4a9c8cf0c8b65fee --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1009 from 0xaDA7d6b05680CE6B44D95b18b3fC456122A41ED3(remapped to 0xb48c19ae978BA83a659e37Fbd5c7735E3020c10E) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 4b7e7b18c3209900dcf35f456785755de28d8e9887d1f264e1d7f4bb3df5322e --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1010 from 0xaDA7d6b05680CE6B44D95b18b3fC456122A41ED3(remapped to 0xb48c19ae978BA83a659e37Fbd5c7735E3020c10E) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 4b7e7b18c3209900dcf35f456785755de28d8e9887d1f264e1d7f4bb3df5322e --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1011 from 0xAcfd3a231687ac96492d86B7D6fA934a6277e0e8(remapped to 0x6F1600f18D4B90a7b8595d5C91474D5942985aEe) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87e60eb047311a107f3a9fb15decb2f47db994cd9dff97f22fc1607fdd3fa599 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1012 from 0xAcfd3a231687ac96492d86B7D6fA934a6277e0e8(remapped to 0x6F1600f18D4B90a7b8595d5C91474D5942985aEe) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87e60eb047311a107f3a9fb15decb2f47db994cd9dff97f22fc1607fdd3fa599 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1013 from 0x52A06923DF5C8f2469C50e0bB342027f675BA866(remapped to 0x8A1d70AD14854a00320572302E83d6e2C365F430) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 068ca179596b60a94fa021c6695179dde0e01c797d9ca98ec5f8ed64d210e07f --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1014 from 0x52A06923DF5C8f2469C50e0bB342027f675BA866(remapped to 0x8A1d70AD14854a00320572302E83d6e2C365F430) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 068ca179596b60a94fa021c6695179dde0e01c797d9ca98ec5f8ed64d210e07f --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1015 from 0x44016bAfDA4B2cf59D1ad410251E7B4b1FB60Fef(remapped to 0xbdCB43b878Ea1137AE643b7eD53DD46d5B5448F2) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 1ff652044a832898f859a85fbe1e80e1d6ae8304272afd659b787f70fe3c6ff2 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1016 from 0x44016bAfDA4B2cf59D1ad410251E7B4b1FB60Fef(remapped to 0xbdCB43b878Ea1137AE643b7eD53DD46d5B5448F2) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 1ff652044a832898f859a85fbe1e80e1d6ae8304272afd659b787f70fe3c6ff2 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1017 from 0xcF5714Ae240A4312B42Fa5E2a459B474C7C842c3(remapped to 0xB69c407B1D38DE69A86234FA37edB29Be447F2AB) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 06604ad1be0ba2f160697a8c1b0326017d9c6de3a4699674b4bfe4410ed37375 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1018 from 0xcF5714Ae240A4312B42Fa5E2a459B474C7C842c3(remapped to 0xB69c407B1D38DE69A86234FA37edB29Be447F2AB) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 06604ad1be0ba2f160697a8c1b0326017d9c6de3a4699674b4bfe4410ed37375 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1019 from 0xa326272dcf97185DD6d789926FF25485fe35CDe9(remapped to 0xB2Fc7e47a42F0546771Bf4a1751eeA95a2Fc7768) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 83e16317bcf085855fd7586b66de8e2f77bb528441c1ff38953383edb7cb1c57 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1020 from 0xa326272dcf97185DD6d789926FF25485fe35CDe9(remapped to 0xB2Fc7e47a42F0546771Bf4a1751eeA95a2Fc7768) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 83e16317bcf085855fd7586b66de8e2f77bb528441c1ff38953383edb7cb1c57 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1021 from 0xBC2643800ba5E6A8FCBE762a2975854604c880F1(remapped to 0x30985855594cF60E754e423347Bd693C25532a4E) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 8904d4e40d41f861c4beb21fbfc9e66243d26310553940f85ca842b547f99af2 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1022 from 0xBC2643800ba5E6A8FCBE762a2975854604c880F1(remapped to 0x30985855594cF60E754e423347Bd693C25532a4E) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 8904d4e40d41f861c4beb21fbfc9e66243d26310553940f85ca842b547f99af2 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1023 from 0x5066074702990C3C9CBB0d4Ee23BC8cfDDdCbdbd(remapped to 0xAE7BF4bB773ae78B9FFEA2d7edBbe54D02E8D5F8) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 1c89b859d4813fa74ed7528dde13bf8ade2c9a536a4ed6f1f7e864aec9749255 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1024 from 0x5066074702990C3C9CBB0d4Ee23BC8cfDDdCbdbd(remapped to 0xAE7BF4bB773ae78B9FFEA2d7edBbe54D02E8D5F8) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 1c89b859d4813fa74ed7528dde13bf8ade2c9a536a4ed6f1f7e864aec9749255 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1025 from 0xd5a7cAF6f763Fe3EdCA79E02AD3B883f49cA1623(remapped to 0xf520AAA0bE0343b5f8cc6eD4706ed5df4d3ecC90) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 4ab848f4f73312adc3a1a9977844df9df69de9f73b9f5a3475111055ae0262ef --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1026 from 0xd5a7cAF6f763Fe3EdCA79E02AD3B883f49cA1623(remapped to 0xf520AAA0bE0343b5f8cc6eD4706ed5df4d3ecC90) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 4ab848f4f73312adc3a1a9977844df9df69de9f73b9f5a3475111055ae0262ef --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1027 from 0x1Cd9A5576B17cedb2bEa763Aba549aE39Fce54c8(remapped to 0x2d5D4144B2368AFfaf5805C4d74E047752056A82) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 449d0aa6e44222ae1d651236eba406324ed1a6e52670ea0bfbe13d28157d8278 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1028 from 0x1Cd9A5576B17cedb2bEa763Aba549aE39Fce54c8(remapped to 0x2d5D4144B2368AFfaf5805C4d74E047752056A82) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 449d0aa6e44222ae1d651236eba406324ed1a6e52670ea0bfbe13d28157d8278 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1029 from 0xf5eb25F12c1D15365C52d6590d07E8360bE1DBFD(remapped to 0x54c499Fb5b7e750fFDa5fb8Ed72fF298a7c994FD) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key b8db628ad5a22b08e8563c3906c44554486641df1c1e1315b50cbc0028d0a77d --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1030 from 0xf5eb25F12c1D15365C52d6590d07E8360bE1DBFD(remapped to 0x54c499Fb5b7e750fFDa5fb8Ed72fF298a7c994FD) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key b8db628ad5a22b08e8563c3906c44554486641df1c1e1315b50cbc0028d0a77d --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1031 from 0x4e416F45E27A4B6a0229b829ed6330960248E909(remapped to 0x8A8a06D03693a54a32bE836fb32Df0c17C1b9651) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 0cc8dfa9d79927eae53e6c4ae9ec76e0882e73295a9faf75133f284802462c2e --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1032 from 0x4e416F45E27A4B6a0229b829ed6330960248E909(remapped to 0x8A8a06D03693a54a32bE836fb32Df0c17C1b9651) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 0cc8dfa9d79927eae53e6c4ae9ec76e0882e73295a9faf75133f284802462c2e --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1033 from 0x97AeB6967fBA4ddbbC93Cb12E74d42cFE794E120(remapped to 0x404F1f1D68afe5c2517c689738cA71d73dD65E91) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 4fb22b2eee9743f87f9f8e23c5aa8afb4e60e803bed4434f05a5278eee582f4d --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1034 from 0x97AeB6967fBA4ddbbC93Cb12E74d42cFE794E120(remapped to 0x404F1f1D68afe5c2517c689738cA71d73dD65E91) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 4fb22b2eee9743f87f9f8e23c5aa8afb4e60e803bed4434f05a5278eee582f4d --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1035 from 0xFA848a1574de8640CbBEC2F8d8fBC27807688552(remapped to 0x94d27bdd765d8e3502A09a56f3Df2d247D5cdbC2) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 4e95d467417518cad63e9501201915d276fb6e3da629b63e0df9bc1afe0084a6 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1036 from 0xFA848a1574de8640CbBEC2F8d8fBC27807688552(remapped to 0x94d27bdd765d8e3502A09a56f3Df2d247D5cdbC2) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 4e95d467417518cad63e9501201915d276fb6e3da629b63e0df9bc1afe0084a6 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1037 from 0x66B6cff53054e14e769d640186846b391B6884e0(remapped to 0xaFB446AC39eD5F7dfF0080AdB0faF48334440520) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key d7c31ee6d97ca1df3b0f178ac7e142da763378b7f39598ef9a7c6d1a66270c0f --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1038 from 0x66B6cff53054e14e769d640186846b391B6884e0(remapped to 0xaFB446AC39eD5F7dfF0080AdB0faF48334440520) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key d7c31ee6d97ca1df3b0f178ac7e142da763378b7f39598ef9a7c6d1a66270c0f --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1039 from 0xf4a6B2b8733936A39f514f113E057C908CD80fE1(remapped to 0x363f5Ee4045C05407dFEB52F28a71E4392a10b91) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 70819af3670144a30a817475e151a69a5ba70f176bcd77cb65a56bc7e371829e --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1040 from 0xf4a6B2b8733936A39f514f113E057C908CD80fE1(remapped to 0x363f5Ee4045C05407dFEB52F28a71E4392a10b91) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 70819af3670144a30a817475e151a69a5ba70f176bcd77cb65a56bc7e371829e --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1041 from 0x3d61FEA18e99Abf6D9cD85Bd016a6f1421ee4A3d(remapped to 0xA303D425cE538ae4042AF7Edc372fd39cCC8e198) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 983431d8206fb463294d73e0733e18c3d284c6e441964bc51818b03957d6e8ba --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1042 from 0x3d61FEA18e99Abf6D9cD85Bd016a6f1421ee4A3d(remapped to 0xA303D425cE538ae4042AF7Edc372fd39cCC8e198) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 983431d8206fb463294d73e0733e18c3d284c6e441964bc51818b03957d6e8ba --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1043 from 0x77836123dF51C841b2660A8A40A50372220e6683(remapped to 0x25C8f63B35928DFc1c042FD6d97539D8563b7Fe4) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 278ad2888ff668d955cce253a7d8783e89fcf0945dafed432aa59ee17107e10e --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1044 from 0x77836123dF51C841b2660A8A40A50372220e6683(remapped to 0x25C8f63B35928DFc1c042FD6d97539D8563b7Fe4) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 278ad2888ff668d955cce253a7d8783e89fcf0945dafed432aa59ee17107e10e --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1045 from 0xFa1B769d80D30AcAB7b8933146F86FfB450449f6(remapped to 0x9469D99f25AfCb8Dda87499023375d165DadCF08) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 10c39c855770356ed18e406abcaa2b94b690bde432a8e5cf7219a905e8a40615 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1046 from 0xFa1B769d80D30AcAB7b8933146F86FfB450449f6(remapped to 0x9469D99f25AfCb8Dda87499023375d165DadCF08) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 10c39c855770356ed18e406abcaa2b94b690bde432a8e5cf7219a905e8a40615 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1047 from 0xB20B0cD12dF53d413E4CcbafBA9Feb69a0407702(remapped to 0x87D4d26297858A3640f4E48b3A1d47134DCd5A79) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 1eb142cdcf9a760e5bbb3b5921342bf57cbdcee292eaa81cfc6786e5c96906c8 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1048 from 0xB20B0cD12dF53d413E4CcbafBA9Feb69a0407702(remapped to 0x87D4d26297858A3640f4E48b3A1d47134DCd5A79) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 1eb142cdcf9a760e5bbb3b5921342bf57cbdcee292eaa81cfc6786e5c96906c8 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1049 from 0xFf917528F4e72D9A7423d242bDbe7aac1b7c8064(remapped to 0x56779b9159493bDe80422Fd613AF56FcA7C5978C) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f8603a547b1bff1541a2a726b201a7e4702c1ba335a2a62e4cf65dc58d89197a --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1050 from 0xFf917528F4e72D9A7423d242bDbe7aac1b7c8064(remapped to 0x56779b9159493bDe80422Fd613AF56FcA7C5978C) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f8603a547b1bff1541a2a726b201a7e4702c1ba335a2a62e4cf65dc58d89197a --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1051 from 0x0787a271135c1E5AB4a4F51Af8A42A563E38CCD0(remapped to 0xaDEC4a52e28d46dE6D980DD59c6D8a7557Af287A) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 0e25619bae3b139d8ea10d442df1ed2912b4f6e7141701ed0f3c9252fa6fee2c --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1052 from 0x0787a271135c1E5AB4a4F51Af8A42A563E38CCD0(remapped to 0xaDEC4a52e28d46dE6D980DD59c6D8a7557Af287A) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 0e25619bae3b139d8ea10d442df1ed2912b4f6e7141701ed0f3c9252fa6fee2c --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1053 from 0x9826c750Fea6A0aBB02F1E5489ce23C471C74c92(remapped to 0x15E7308c0312FBb9783E8150C25c95C2d1Ec9453) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 8ae929b3d5f2672f004cc492ae9793ff343fce8f80b5511430e3a10d5bc45c16 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1054 from 0x9826c750Fea6A0aBB02F1E5489ce23C471C74c92(remapped to 0x15E7308c0312FBb9783E8150C25c95C2d1Ec9453) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 8ae929b3d5f2672f004cc492ae9793ff343fce8f80b5511430e3a10d5bc45c16 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1055 from 0xC069C44a5979a8AB081A97C4488DB9d44BFE67aC(remapped to 0xb8514080a5749570b1118210EbfBe1a36Cfd415b) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 5235f0ce17d0fd0a1fdc7538ce0976241d4c6110b7468592bfb78ef1a25bd958 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1056 from 0xC069C44a5979a8AB081A97C4488DB9d44BFE67aC(remapped to 0xb8514080a5749570b1118210EbfBe1a36Cfd415b) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 5235f0ce17d0fd0a1fdc7538ce0976241d4c6110b7468592bfb78ef1a25bd958 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1057 from 0xb2bCaBe26F9AF9a7Afcee95853C7E33554Bd219C(remapped to 0x31463eaF7364F765F84eb17a5f7b945e6CAD8191) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key d04fffb545924c5fcce309ac7d91d495ce1486701534252ffdc446a19ac857a2 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1058 from 0xb2bCaBe26F9AF9a7Afcee95853C7E33554Bd219C(remapped to 0x31463eaF7364F765F84eb17a5f7b945e6CAD8191) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key d04fffb545924c5fcce309ac7d91d495ce1486701534252ffdc446a19ac857a2 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1059 from 0xBBB06E98CF4E00c8cDA42c3C8b862de7cC3f520D(remapped to 0xC7ce6AC259C706684bf5c7b36db02B08E44Fe64D) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9f005fe549c329f1511a36da6837adf7203e1ae99c8380dc6f92e909efff04d5 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1060 from 0xBBB06E98CF4E00c8cDA42c3C8b862de7cC3f520D(remapped to 0xC7ce6AC259C706684bf5c7b36db02B08E44Fe64D) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9f005fe549c329f1511a36da6837adf7203e1ae99c8380dc6f92e909efff04d5 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1061 from 0xFCb7d712eFc408D2b78Cd698f2025D1A85D83a84(remapped to 0x8456c84b5cB613C61B8476C524634dC45AC10244) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 125f46b7dd3ac660fd5cce47496462e2de0af2eea6a915c538668eeb8a437c81 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1062 from 0xFCb7d712eFc408D2b78Cd698f2025D1A85D83a84(remapped to 0x8456c84b5cB613C61B8476C524634dC45AC10244) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 125f46b7dd3ac660fd5cce47496462e2de0af2eea6a915c538668eeb8a437c81 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1063 from 0x3B49C58fEca066328089cFFeBAF751ee2Afe71DE(remapped to 0xd8B063092De57fbe24Fc1572A54B134fb503C249) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 4ac18efc035f1a4d097132f621061508dc906e64ebfe839ef12ca1610574e66e --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1064 from 0x3B49C58fEca066328089cFFeBAF751ee2Afe71DE(remapped to 0xd8B063092De57fbe24Fc1572A54B134fb503C249) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 4ac18efc035f1a4d097132f621061508dc906e64ebfe839ef12ca1610574e66e --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1065 from 0x03D6DBaf9684C9bbA818A9bE1F66300e8DeEc8fB(remapped to 0xc0E94C7252BE5c5Fd2FfB04862Aff5f6705bf841) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key d4a17725b616f2fefd79bac151588e3e6034756f7d1333b969913b21cc77143c --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1066 from 0x03D6DBaf9684C9bbA818A9bE1F66300e8DeEc8fB(remapped to 0xc0E94C7252BE5c5Fd2FfB04862Aff5f6705bf841) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key d4a17725b616f2fefd79bac151588e3e6034756f7d1333b969913b21cc77143c --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1067 from 0x0F47FBBC2aB600cff2D8da94Dd53c8De11fA8EC2(remapped to 0x118507c3761c1f0789Ed4566532E02f199B1a7CB) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key faa79c6ab6c96f6d74fe47c2eb7023d653e7d731db5ecb8e05071e2c50d1da18 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1068 from 0x0F47FBBC2aB600cff2D8da94Dd53c8De11fA8EC2(remapped to 0x118507c3761c1f0789Ed4566532E02f199B1a7CB) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key faa79c6ab6c96f6d74fe47c2eb7023d653e7d731db5ecb8e05071e2c50d1da18 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1069 from 0xF5426f5D6F46Eb6a861adEdD37da9F3bd4EeB05B(remapped to 0x330dC67aE2f8759c7FB105B5A25fC804d3dcF1C5) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 0ccf7bc78956f1f0aca00032750c282789f34bf8d0b868b931dc037f1187bd4d --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1070 from 0xF5426f5D6F46Eb6a861adEdD37da9F3bd4EeB05B(remapped to 0x330dC67aE2f8759c7FB105B5A25fC804d3dcF1C5) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 0ccf7bc78956f1f0aca00032750c282789f34bf8d0b868b931dc037f1187bd4d --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1071 from 0x7A0Afb8c22D099e8d9353207c7053174b71F9fF0(remapped to 0x8925A905bC25Fc5f098F523C2D4C87BBc32aB4A3) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 667bb83d63836bb152a47c4802bd413f2cc3facd19580ea8d8cf738221d29942 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1072 from 0x7A0Afb8c22D099e8d9353207c7053174b71F9fF0(remapped to 0x8925A905bC25Fc5f098F523C2D4C87BBc32aB4A3) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 667bb83d63836bb152a47c4802bd413f2cc3facd19580ea8d8cf738221d29942 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1073 from 0xA1e2E8702c87DfB9B3882b319eEEf6cfF9E289Ad(remapped to 0x6c141eDD397De41F10b4CAe6e2E73eE1aE89a648) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 500d847a4028321e53b208761a72a58341bcf3a7bbdb34953614a3c3318ebcc1 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1074 from 0xA1e2E8702c87DfB9B3882b319eEEf6cfF9E289Ad(remapped to 0x6c141eDD397De41F10b4CAe6e2E73eE1aE89a648) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 500d847a4028321e53b208761a72a58341bcf3a7bbdb34953614a3c3318ebcc1 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1075 from 0xA1e2E8702c87DfB9B3882b319eEEf6cfF9E289Ad(remapped to 0x6c141eDD397De41F10b4CAe6e2E73eE1aE89a648) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 500d847a4028321e53b208761a72a58341bcf3a7bbdb34953614a3c3318ebcc1 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1076 from 0x9BbA6A5A1289EB02Df3Ff4bB66d526d1f33ae92c(remapped to 0x44A0fCA53a684E22185836265BDcbfda02E996Dd) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 60c5985ce9408bce2e1b9dbc87e84b21b458389a403a764834bc61c74a0174bb --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1077 from 0x9BbA6A5A1289EB02Df3Ff4bB66d526d1f33ae92c(remapped to 0x44A0fCA53a684E22185836265BDcbfda02E996Dd) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 60c5985ce9408bce2e1b9dbc87e84b21b458389a403a764834bc61c74a0174bb --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1078 from 0xd58cB804098D02aa6EF99982D04BAF36D784fA7F(remapped to 0xEA7e6DDD56C68F30D0a2A6fB1dfd510343e50D2e) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 29ab2f4fe1c2707a403ceacb227d0fcdf49f22d307f4878244f24357b2758d3c --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1079 from 0xd58cB804098D02aa6EF99982D04BAF36D784fA7F(remapped to 0xEA7e6DDD56C68F30D0a2A6fB1dfd510343e50D2e) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 29ab2f4fe1c2707a403ceacb227d0fcdf49f22d307f4878244f24357b2758d3c --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1080 from 0xabb152795d0a1c12ced3b6c67839F8dfC1b69C98(remapped to 0x6b68a0e4c6234faFd78ad5405550Ee12C3c89693) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 82c319dd85bb5606d37b7e64fa934235b6dd41ebb3fca111964831ec6a174e15 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1081 from 0xabb152795d0a1c12ced3b6c67839F8dfC1b69C98(remapped to 0x6b68a0e4c6234faFd78ad5405550Ee12C3c89693) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 82c319dd85bb5606d37b7e64fa934235b6dd41ebb3fca111964831ec6a174e15 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1082 from 0xE65253613f215241c99567F89Cc814567a481116(remapped to 0xb7C7f63b23e65e90cfaEDf8e0Ae25FF9f453D192) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 447db9d077b6c8b8065c365996b870a7269830059eecf1aa58950ba3d5432255 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1083 from 0xE65253613f215241c99567F89Cc814567a481116(remapped to 0xb7C7f63b23e65e90cfaEDf8e0Ae25FF9f453D192) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 447db9d077b6c8b8065c365996b870a7269830059eecf1aa58950ba3d5432255 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1084 from 0xC13928e81b595D2256c9753fC7989Ac902d0CEE7(remapped to 0x7440d93ab7244b3DFB1688AB1d281dBdf56018C6) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key bcd2a09365ddfc6dcaa223d82f6a97025ef9bae1e0f05c7a7c3841c2a2a84f72 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1085 from 0xC13928e81b595D2256c9753fC7989Ac902d0CEE7(remapped to 0x7440d93ab7244b3DFB1688AB1d281dBdf56018C6) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key bcd2a09365ddfc6dcaa223d82f6a97025ef9bae1e0f05c7a7c3841c2a2a84f72 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1086 from 0x83c85c0dd6F552a61743FA28F94c92C34Ba12F8a(remapped to 0x089980ED4a6242919cb1edE95BC045C8A6D49dad) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 79f498a720a2ba8ff5846ad19f4b214c5c5419bdd4f061e2dde05e87469d81ee --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1087 from 0x83c85c0dd6F552a61743FA28F94c92C34Ba12F8a(remapped to 0x089980ED4a6242919cb1edE95BC045C8A6D49dad) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 79f498a720a2ba8ff5846ad19f4b214c5c5419bdd4f061e2dde05e87469d81ee --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1088 from 0xBc335622F9f0316D2435507aF3F543424906B7b5(remapped to 0x75B2e908Bae0A976D34860C0ae6F9c468faa1bce) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 47b041c9b116babd9f1fd7666839160733be37f5c5e4ca6f7c69342b555e391a --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicOrFail] Processing transaction number 1089 from 0xBc335622F9f0316D2435507aF3F543424906B7b5(remapped to 0x75B2e908Bae0A976D34860C0ae6F9c468faa1bce) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 47b041c9b116babd9f1fd7666839160733be37f5c5e4ca6f7c69342b555e391a --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

