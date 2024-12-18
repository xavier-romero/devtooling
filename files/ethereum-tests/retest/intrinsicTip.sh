# PRV_KEY for master sender 0xa77a167F06f1bf9B66be2A5Dc04A0Aca9ca3034C
PRV_KEY=9ef4ab77026f8f12377e11b6dd5bfdeb49ea83738431f2fc23e657a6bba4189b
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test intrinsicTip (src/BlockchainTestsFiller/ValidBlocks/bcEIP1559/intrinsicTipFiller.yml)"

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x518B184C373048A6A12541859D3C355854d10043) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x518B184C373048A6A12541859D3C355854d10043 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xe2AFf99a29fADcd427b47b514b42ee5394913A01(remapped to 0x0bfD431460FaCa97164f8DEF0848857E65d98045) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x0bfD431460FaCa97164f8DEF0848857E65d98045 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x6c5F5b28B10d021bf947e626Bf4565C8957162B4(remapped to 0x70f26fdcA0835e25585E84c7Dd03D00f521dd287) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x70f26fdcA0835e25585E84c7Dd03D00f521dd287 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x3D0fE89106005C4Dfe13b1DfdDFa6c012F0FbC45(remapped to 0xF73D29Ec39d2988414f274c2DDe59718DD1077F0) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xF73D29Ec39d2988414f274c2DDe59718DD1077F0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x32BcEef44283dba687554010aCd79838aFAc8daf(remapped to 0xa502cE14c500C9bce80bF06F62560A07cdd6E9Dc) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xa502cE14c500C9bce80bF06F62560A07cdd6E9Dc | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x387c92d4D20731FA792c392D81f717f246b59d3f(remapped to 0x477480fA27fd1F329c8e5E7E1Bd78f7ACEfA5eC8) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x477480fA27fd1F329c8e5E7E1Bd78f7ACEfA5eC8 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xD3e613c808af8C79d0eAc680c97a55252Ed612E4(remapped to 0xE51029d508DB161Cb55636512Ad56a6c9f02205C) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xE51029d508DB161Cb55636512Ad56a6c9f02205C | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xB0Fc229D18A7F912056a48b19DF7cEb81D5A11ce(remapped to 0x35f9c32AEE73e5c916F6bd594097a92df3945d9B) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x35f9c32AEE73e5c916F6bd594097a92df3945d9B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xB5490DCbdCBE9fDd913BF9b875d49e2B1b1FB134(remapped to 0x400f38d97035b2ce3eA9415d61BF792A53F293A4) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x400f38d97035b2ce3eA9415d61BF792A53F293A4 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xD8532747C5719E0e2A7BCaF4F554E280c537fC41(remapped to 0xa5Dab12980F129BFA8D334f2F03fD133f8eDA5b0) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xa5Dab12980F129BFA8D334f2F03fD133f8eDA5b0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x4C2B54bC284422ac56062dBFf1F8c37D85FACc52(remapped to 0xCE086f6EC14a379e42228d5E713fa137fF9db927) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xCE086f6EC14a379e42228d5E713fa137fF9db927 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x0f752cbdef4ef9A5F014bEF8db9824B7Bc4C4FA6(remapped to 0xaa0741dAe16d45463733c58aFB7289347C6E2ed4) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xaa0741dAe16d45463733c58aFB7289347C6E2ed4 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xDA3F16869c64cF7B5d2Cac5B1db508A8e0675855(remapped to 0x5Cc7d0963f9D3464863e00b385Ddf7B7dcFf20d9) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x5Cc7d0963f9D3464863e00b385Ddf7B7dcFf20d9 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xa17EEAd3AaaE02Db92F0f1DDEFb183B5265eDC14(remapped to 0xbb8a90fddc76d0B4c9944b30f0D2a87dbf54a2A4) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xbb8a90fddc76d0B4c9944b30f0D2a87dbf54a2A4 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xcc8B252a735FD1c4F0108ac34eb7859646Ce6fdE(remapped to 0xa1FB80B7F4E99437E264763bAa6B45D73D6F375E) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xa1FB80B7F4E99437E264763bAa6B45D73D6F375E | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xec0a4cA21deD8797394CEF1B800b17a9b1D3B9B8(remapped to 0xF60b137789c15aD1281D4dfE4CE7162CE7dda29A) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xF60b137789c15aD1281D4dfE4CE7162CE7dda29A | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x9141007e16C363Bf9cbE916C18E73F127aE7755E(remapped to 0x28D237357E97c643e79b290cE89A018D5C3c32c9) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x28D237357E97c643e79b290cE89A018D5C3c32c9 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xAF7b8037BB4034b833e25ddd3EC1Af2c86f50e04(remapped to 0x792FD2A4F43fd774FC8D69C7E7f889DFA0f1eE5d) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x792FD2A4F43fd774FC8D69C7E7f889DFA0f1eE5d | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xd38E4AC4BAC1464407B6AB25ECF371D1c52ADe82(remapped to 0x97fa32CE1B0ACd2B5b515CB288Eb5b3Df8773a22) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x97fa32CE1B0ACd2B5b515CB288Eb5b3Df8773a22 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x5c2DB6fB75d479996298C3605031ee71c0a56E71(remapped to 0x75c0845f78AEe96DF0151e6305B2392d0225f6B9) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x75c0845f78AEe96DF0151e6305B2392d0225f6B9 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x791456f824C01F05664cA04c7992b5264d5A65C7(remapped to 0x77Ed5eE26C86F3cA4Cc1333b3060C5fdc0B0D9B2) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x77Ed5eE26C86F3cA4Cc1333b3060C5fdc0B0D9B2 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xaDA7d6b05680CE6B44D95b18b3fC456122A41ED3(remapped to 0xD193b9E9480c1848750C4180460875c1BF9dD12d) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xD193b9E9480c1848750C4180460875c1BF9dD12d | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xAcfd3a231687ac96492d86B7D6fA934a6277e0e8(remapped to 0x0D775cB54B75e3Ee6150768C7a1a517a034C1e34) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x0D775cB54B75e3Ee6150768C7a1a517a034C1e34 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x52A06923DF5C8f2469C50e0bB342027f675BA866(remapped to 0xbE3A6cA5Fd431F13a2a658A06feB666568A08b85) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xbE3A6cA5Fd431F13a2a658A06feB666568A08b85 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x44016bAfDA4B2cf59D1ad410251E7B4b1FB60Fef(remapped to 0x36e36F103099cC09A85030990B5F569986FBa40E) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x36e36F103099cC09A85030990B5F569986FBa40E | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xcF5714Ae240A4312B42Fa5E2a459B474C7C842c3(remapped to 0xeFa3d89287Ea6Da47f9ab7bc1e3E087B7f07ca39) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xeFa3d89287Ea6Da47f9ab7bc1e3E087B7f07ca39 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xa326272dcf97185DD6d789926FF25485fe35CDe9(remapped to 0xE9389AD194207A49E313dF701161F22C3965E3F4) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xE9389AD194207A49E313dF701161F22C3965E3F4 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xBC2643800ba5E6A8FCBE762a2975854604c880F1(remapped to 0x79C0F66896C9C3eeCbdCE935843CbD2C29b98798) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x79C0F66896C9C3eeCbdCE935843CbD2C29b98798 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x5066074702990C3C9CBB0d4Ee23BC8cfDDdCbdbd(remapped to 0x901e4991F040C4Da9e55c05D778B16F68E54E91D) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x901e4991F040C4Da9e55c05D778B16F68E54E91D | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xd5a7cAF6f763Fe3EdCA79E02AD3B883f49cA1623(remapped to 0x76900187eC0ECA9Bd888932744F7819868c7281C) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x76900187eC0ECA9Bd888932744F7819868c7281C | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x1Cd9A5576B17cedb2bEa763Aba549aE39Fce54c8(remapped to 0x0714d889cbE45c87E86f4d2f231b962d63f3ED23) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x0714d889cbE45c87E86f4d2f231b962d63f3ED23 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xf5eb25F12c1D15365C52d6590d07E8360bE1DBFD(remapped to 0xdc6c2b88fe7Eb0b5BA5e404da72e90867FBF0e6e) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xdc6c2b88fe7Eb0b5BA5e404da72e90867FBF0e6e | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x4e416F45E27A4B6a0229b829ed6330960248E909(remapped to 0xFaE982768cEBd63e52d5fa642152deee1Bf65161) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xFaE982768cEBd63e52d5fa642152deee1Bf65161 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x97AeB6967fBA4ddbbC93Cb12E74d42cFE794E120(remapped to 0x1E64fa1AE12492fEc9eFB9270AC5Ce44EfB4F9Ee) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x1E64fa1AE12492fEc9eFB9270AC5Ce44EfB4F9Ee | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xFA848a1574de8640CbBEC2F8d8fBC27807688552(remapped to 0x345A41078fa019aaC23A9D04df714498A45fA30E) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x345A41078fa019aaC23A9D04df714498A45fA30E | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x66B6cff53054e14e769d640186846b391B6884e0(remapped to 0xe04e0047d57CC975050Da4279F4d417F1dBD3849) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xe04e0047d57CC975050Da4279F4d417F1dBD3849 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xf4a6B2b8733936A39f514f113E057C908CD80fE1(remapped to 0x838BaE625a00522325025Fa643f0a5279e5b5C4b) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x838BaE625a00522325025Fa643f0a5279e5b5C4b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x3d61FEA18e99Abf6D9cD85Bd016a6f1421ee4A3d(remapped to 0x82Ae391e9867d70dCf3e66EcDeEbd543E727a71e) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x82Ae391e9867d70dCf3e66EcDeEbd543E727a71e | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x77836123dF51C841b2660A8A40A50372220e6683(remapped to 0xc99DeD251708678cd1e9499b235CFF46ecf4f543) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xc99DeD251708678cd1e9499b235CFF46ecf4f543 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xFa1B769d80D30AcAB7b8933146F86FfB450449f6(remapped to 0xe79800C19280b90F326ef87979Af4F79dEd2b35A) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xe79800C19280b90F326ef87979Af4F79dEd2b35A | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xB20B0cD12dF53d413E4CcbafBA9Feb69a0407702(remapped to 0x2d12e48133eDA693242408c96fd67aa7Cb0B3d4A) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x2d12e48133eDA693242408c96fd67aa7Cb0B3d4A | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xFf917528F4e72D9A7423d242bDbe7aac1b7c8064(remapped to 0x49F2f380076C286c7E5D17F9eFcC2bb861F41AB9) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x49F2f380076C286c7E5D17F9eFcC2bb861F41AB9 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x0787a271135c1E5AB4a4F51Af8A42A563E38CCD0(remapped to 0x4f77F511451cA5C76129CD86034853eFE10092C8) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x4f77F511451cA5C76129CD86034853eFE10092C8 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x9826c750Fea6A0aBB02F1E5489ce23C471C74c92(remapped to 0xbF16e8D754e97A3038759122457aEb9242A3e696) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xbF16e8D754e97A3038759122457aEb9242A3e696 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xC069C44a5979a8AB081A97C4488DB9d44BFE67aC(remapped to 0x9A04Ea854530e26C72178a35E277623362d2BcD0) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x9A04Ea854530e26C72178a35E277623362d2BcD0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xb2bCaBe26F9AF9a7Afcee95853C7E33554Bd219C(remapped to 0x9406D79Cc21FE3d78D2E72144d67E6bf52212105) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x9406D79Cc21FE3d78D2E72144d67E6bf52212105 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xBBB06E98CF4E00c8cDA42c3C8b862de7cC3f520D(remapped to 0xAF2D4C8961Ed27b1A900F7AF725aD4d5235dF12c) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xAF2D4C8961Ed27b1A900F7AF725aD4d5235dF12c | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xFCb7d712eFc408D2b78Cd698f2025D1A85D83a84(remapped to 0xB8B60bdF1A67E9e6EA21125F0A0027D9E3f57B24) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xB8B60bdF1A67E9e6EA21125F0A0027D9E3f57B24 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x3B49C58fEca066328089cFFeBAF751ee2Afe71DE(remapped to 0xb68f448af8C217c20d24d6De202313AdCD30BfeD) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xb68f448af8C217c20d24d6De202313AdCD30BfeD | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x03D6DBaf9684C9bbA818A9bE1F66300e8DeEc8fB(remapped to 0x6cE3ce6C91DD2f5CcC405902eFB4dEbb619ECB75) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x6cE3ce6C91DD2f5CcC405902eFB4dEbb619ECB75 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x0F47FBBC2aB600cff2D8da94Dd53c8De11fA8EC2(remapped to 0x1c23e4Ca648E51E3999a3eFc1f13a4c0899b575a) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x1c23e4Ca648E51E3999a3eFc1f13a4c0899b575a | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xF5426f5D6F46Eb6a861adEdD37da9F3bd4EeB05B(remapped to 0x7bD4AaAe02Fe0057Cc9e2E80f1624FdCedF3532F) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x7bD4AaAe02Fe0057Cc9e2E80f1624FdCedF3532F | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x7A0Afb8c22D099e8d9353207c7053174b71F9fF0(remapped to 0x49Ce8843b86Ec91FA4e6bb9a95df733258BF0c9a) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x49Ce8843b86Ec91FA4e6bb9a95df733258BF0c9a | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xA1e2E8702c87DfB9B3882b319eEEf6cfF9E289Ad(remapped to 0xC708CD339726D9ba11383dFDA797BA899AC72C96) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xC708CD339726D9ba11383dFDA797BA899AC72C96 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x9BbA6A5A1289EB02Df3Ff4bB66d526d1f33ae92c(remapped to 0x2b57c8e9AbF013Cf3fB1D2Cad32AD48Ba20Ae972) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x2b57c8e9AbF013Cf3fB1D2Cad32AD48Ba20Ae972 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xd58cB804098D02aa6EF99982D04BAF36D784fA7F(remapped to 0x4dacae34645b1a4433390aCeCF7a42c46D30b142) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x4dacae34645b1a4433390aCeCF7a42c46D30b142 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xabb152795d0a1c12ced3b6c67839F8dfC1b69C98(remapped to 0x32C7B10124675664b2339BB421e9FEb0c0aC50b1) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x32C7B10124675664b2339BB421e9FEb0c0aC50b1 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xE65253613f215241c99567F89Cc814567a481116(remapped to 0x26bCEA98FD842B96dD092eD6aFeF581Ed43Ddb7c) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x26bCEA98FD842B96dD092eD6aFeF581Ed43Ddb7c | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xC13928e81b595D2256c9753fC7989Ac902d0CEE7(remapped to 0x1A6f0a395A75bC0aA801a69E402EFC0ACA4e0a48) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x1A6f0a395A75bC0aA801a69E402EFC0ACA4e0a48 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x83c85c0dd6F552a61743FA28F94c92C34Ba12F8a(remapped to 0x3B447Ec2344f036730145fFD31C89901d35f45f1) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x3B447Ec2344f036730145fFD31C89901d35f45f1 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xBc335622F9f0316D2435507aF3F543424906B7b5(remapped to 0x84B7d31b72a8B664B85d2F83cF0CcD2d23145a73) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x84B7d31b72a8B664B85d2F83cF0CcD2d23145a73 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccc with code and balance 1099511627776..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 6300000003601260003963000000036000F33a4355 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

echo "[intrinsicTip] Creating receiver 0x1111111111111111111111111111111111111111 with code and balance 1099511627776..."
ADDR_1111111111111111111111111111111111111111=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 63000007a1601260003963000007a16000F3610020565b60006104b064174876e800833181038281049350505050919050565b61003d73e2aff99a29fadcd427b47b514b42ee5394913a01610004565b60005561005d736c5f5b28b10d021bf947e626bf4565c8957162b4610004565b60015561007d733d0fe89106005c4dfe13b1dfddfa6c012f0fbc45610004565b60025561009d7332bceef44283dba687554010acd79838afac8daf610004565b6003556100bd73387c92d4d20731fa792c392d81f717f246b59d3f610004565b6004556100dd73d3e613c808af8c79d0eac680c97a55252ed612e4610004565b6005556100fd73b0fc229d18a7f912056a48b19df7ceb81d5a11ce610004565b60065561011d73b5490dcbdcbe9fdd913bf9b875d49e2b1b1fb134610004565b60075561013d73d8532747c5719e0e2a7bcaf4f554e280c537fc41610004565b60085561015d734c2b54bc284422ac56062dbff1f8c37d85facc52610004565b60095561017d730f752cbdef4ef9a5f014bef8db9824b7bc4c4fa6610004565b600a5561019d73da3f16869c64cf7b5d2cac5b1db508a8e0675855610004565b600b556101bd73a17eead3aaae02db92f0f1ddefb183b5265edc14610004565b600c556101dd73cc8b252a735fd1c4f0108ac34eb7859646ce6fde610004565b600d556101fd73ec0a4ca21ded8797394cef1b800b17a9b1d3b9b8610004565b600e5561021d739141007e16c363bf9cbe916c18e73f127ae7755e610004565b600f5561023d73af7b8037bb4034b833e25ddd3ec1af2c86f50e04610004565b60105561025d73d38e4ac4bac1464407b6ab25ecf371d1c52ade82610004565b60115561027d735c2db6fb75d479996298c3605031ee71c0a56e71610004565b60125561029d73791456f824c01f05664ca04c7992b5264d5a65c7610004565b6013556102bd73ada7d6b05680ce6b44d95b18b3fc456122a41ed3610004565b6014556102dd73acfd3a231687ac96492d86b7d6fa934a6277e0e8610004565b6015556102fd7352a06923df5c8f2469c50e0bb342027f675ba866610004565b60165561031d7344016bafda4b2cf59d1ad410251e7b4b1fb60fef610004565b60175561033d73cf5714ae240a4312b42fa5e2a459b474c7c842c3610004565b60185561035d73a326272dcf97185dd6d789926ff25485fe35cde9610004565b60195561037d73bc2643800ba5e6a8fcbe762a2975854604c880f1610004565b601a5561039d735066074702990c3c9cbb0d4ee23bc8cfdddcbdbd610004565b601b556103bd73d5a7caf6f763fe3edca79e02ad3b883f49ca1623610004565b601c556103dd731cd9a5576b17cedb2bea763aba549ae39fce54c8610004565b601d556103fd73f5eb25f12c1d15365c52d6590d07e8360be1dbfd610004565b601e5561041d734e416f45e27a4b6a0229b829ed6330960248e909610004565b601f5561043d7397aeb6967fba4ddbbc93cb12e74d42cfe794e120610004565b60205561045d73fa848a1574de8640cbbec2f8d8fbc27807688552610004565b60215561047d7366b6cff53054e14e769d640186846b391b6884e0610004565b60225561049d73f4a6b2b8733936a39f514f113e057c908cd80fe1610004565b6023556104bd733d61fea18e99abf6d9cd85bd016a6f1421ee4a3d610004565b6024556104dd7377836123df51c841b2660a8a40a50372220e6683610004565b6025556104fd73fa1b769d80d30acab7b8933146f86ffb450449f6610004565b60265561051d73b20b0cd12df53d413e4ccbafba9feb69a0407702610004565b60275561053d73ff917528f4e72d9a7423d242bdbe7aac1b7c8064610004565b60285561055d730787a271135c1e5ab4a4f51af8a42a563e38ccd0610004565b60295561057d739826c750fea6a0abb02f1e5489ce23c471c74c92610004565b602a5561059d73c069c44a5979a8ab081a97c4488db9d44bfe67ac610004565b602b556105bd73b2bcabe26f9af9a7afcee95853c7e33554bd219c610004565b602c556105dd73bbb06e98cf4e00c8cda42c3c8b862de7cc3f520d610004565b602d556105fd73fcb7d712efc408d2b78cd698f2025d1a85d83a84610004565b602e5561061d733b49c58feca066328089cffebaf751ee2afe71de610004565b602f5561063d7303d6dbaf9684c9bba818a9be1f66300e8deec8fb610004565b60305561065d730f47fbbc2ab600cff2d8da94dd53c8de11fa8ec2610004565b60315561067d73f5426f5d6f46eb6a861adedd37da9f3bd4eeb05b610004565b60325561069d737a0afb8c22d099e8d9353207c7053174b71f9ff0610004565b6033556106bd73a1e2e8702c87dfb9b3882b319eeef6cff9e289ad610004565b6034556106dd739bba6a5a1289eb02df3ff4bb66d526d1f33ae92c610004565b6035556106fd73d58cb804098d02aa6ef99982d04baf36d784fa7f610004565b60365561071d73abb152795d0a1c12ced3b6c67839f8dfc1b69c98610004565b60375561073d73e65253613f215241c99567f89cc814567a481116610004565b60385561075d73c13928e81b595d2256c9753fc7989ac902d0cee7610004565b60395561077d7383c85c0dd6f552a61743fa28f94c92c34ba12f8a610004565b603a5561079d73bc335622f9f0316d2435507af3f543424906b7b5610004565b603b55 | jq -r .contractAddress)
echo $ADDR_1111111111111111111111111111111111111111

echo "[intrinsicTip] Processing transaction number 1362 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x518B184C373048A6A12541859D3C355854d10043) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 38252eccf0dbd6d7a01742f1687d0df438c84dcd06cadedb5b44575ef10e6f7c --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1363 from 0xe2AFf99a29fADcd427b47b514b42ee5394913A01(remapped to 0x0bfD431460FaCa97164f8DEF0848857E65d98045) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 4bc1c4dcfa7d822c388ce07f48f3965835cbd7c191d1f005742a3c1ff4ad0a39 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1364 from 0x6c5F5b28B10d021bf947e626Bf4565C8957162B4(remapped to 0x70f26fdcA0835e25585E84c7Dd03D00f521dd287) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 104b3bad273a926b80dab4058b1bd24c337a6b271efa0cbf5cc67acd41e3d5cf --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1365 from 0x3D0fE89106005C4Dfe13b1DfdDFa6c012F0FbC45(remapped to 0xF73D29Ec39d2988414f274c2DDe59718DD1077F0) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e3b6f446800fad73c81f1b375d2c85a4c10bea6562612499e0a21ca7df6d4f83 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1366 from 0x32BcEef44283dba687554010aCd79838aFAc8daf(remapped to 0xa502cE14c500C9bce80bF06F62560A07cdd6E9Dc) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 01f1c629167f056af9455fc65d21941b77aedbbdf0e8e308e49e1661dd68b95a --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1367 from 0x387c92d4D20731FA792c392D81f717f246b59d3f(remapped to 0x477480fA27fd1F329c8e5E7E1Bd78f7ACEfA5eC8) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 08f4a8c1a5584e884a85d9f85b94548b4f60d661ae5c11296fb753acb1621811 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1368 from 0xD3e613c808af8C79d0eAc680c97a55252Ed612E4(remapped to 0xE51029d508DB161Cb55636512Ad56a6c9f02205C) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key cea94737cec19a960af21430bd6e9caf994a694ca239955c74abdf1d66a119e7 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1369 from 0xB0Fc229D18A7F912056a48b19DF7cEb81D5A11ce(remapped to 0x35f9c32AEE73e5c916F6bd594097a92df3945d9B) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 0a79a93996abe5837886715a195b64b25ab246dd5ac48ee4a665e5f57e5c9b7b --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1370 from 0xB5490DCbdCBE9fDd913BF9b875d49e2B1b1FB134(remapped to 0x400f38d97035b2ce3eA9415d61BF792A53F293A4) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 81f19870382c1b1a80c9d97c824b64ef88a1c2578974abe0655217fa3481115d --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1371 from 0xD8532747C5719E0e2A7BCaF4F554E280c537fC41(remapped to 0xa5Dab12980F129BFA8D334f2F03fD133f8eDA5b0) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 47147fb4490191821dc9d9a5c1c3d3ad5e248c4ad395bca39b0e0085fbe84082 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1372 from 0x4C2B54bC284422ac56062dBFf1F8c37D85FACc52(remapped to 0xCE086f6EC14a379e42228d5E713fa137fF9db927) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 22e956a96818e91f26938eef151ea4976dfd7a1c143ea940e6aaeb58bd00f4c5 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1373 from 0x0f752cbdef4ef9A5F014bEF8db9824B7Bc4C4FA6(remapped to 0xaa0741dAe16d45463733c58aFB7289347C6E2ed4) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c0e9fb39e1dbe55a1453972db8c8290ca0f7ae37b3ec32a13831d5b3af00f059 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1374 from 0xDA3F16869c64cF7B5d2Cac5B1db508A8e0675855(remapped to 0x5Cc7d0963f9D3464863e00b385Ddf7B7dcFf20d9) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key dc5a73ff47fa5cb77731dfb051f40ce5edd3352359ff23b2d79dd8fac478db24 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1375 from 0xa17EEAd3AaaE02Db92F0f1DDEFb183B5265eDC14(remapped to 0xbb8a90fddc76d0B4c9944b30f0D2a87dbf54a2A4) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 0139934914b20828a0932a99f10dd582415406dea2793a4a1b8cfff5312b4912 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1376 from 0xcc8B252a735FD1c4F0108ac34eb7859646Ce6fdE(remapped to 0xa1FB80B7F4E99437E264763bAa6B45D73D6F375E) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ecf307e54b7b87addddebe1b367ade382bda27204c2efee30adaa63b434d6805 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1377 from 0xec0a4cA21deD8797394CEF1B800b17a9b1D3B9B8(remapped to 0xF60b137789c15aD1281D4dfE4CE7162CE7dda29A) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 05a6fb6b7e036569b929daededabe026cec881291c1e34a5bba58fc18f24e625 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1378 from 0x9141007e16C363Bf9cbE916C18E73F127aE7755E(remapped to 0x28D237357E97c643e79b290cE89A018D5C3c32c9) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 5c867ee48e89b3e881dba9f95bda882d0a8d710310576826d5f4f5a43d28e16e --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1379 from 0xAF7b8037BB4034b833e25ddd3EC1Af2c86f50e04(remapped to 0x792FD2A4F43fd774FC8D69C7E7f889DFA0f1eE5d) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 571344ab0ce3f590576175bb11f944a5e87a52de6a33acdcaea32b6218ecb11b --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1380 from 0xd38E4AC4BAC1464407B6AB25ECF371D1c52ADe82(remapped to 0x97fa32CE1B0ACd2B5b515CB288Eb5b3Df8773a22) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 249c20c60ad17f3b4966fba74d3fe1e3ce2877742909d27d6cc0654e28212a94 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1381 from 0x5c2DB6fB75d479996298C3605031ee71c0a56E71(remapped to 0x75c0845f78AEe96DF0151e6305B2392d0225f6B9) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 6f616b4503c3a300ab89cfabe095fc51586750150a95917dcee2039e674869e3 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1382 from 0x791456f824C01F05664cA04c7992b5264d5A65C7(remapped to 0x77Ed5eE26C86F3cA4Cc1333b3060C5fdc0B0D9B2) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e06abc4ac9709e5d729737918937cf1b91cfd61db57f28ee06b25b2c5c3e8b93 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1383 from 0xaDA7d6b05680CE6B44D95b18b3fC456122A41ED3(remapped to 0xD193b9E9480c1848750C4180460875c1BF9dD12d) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 3d76ba137d07157fb88ac482060ed0d22622f6ac8fd58c2e055c50377128b4ef --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1384 from 0xAcfd3a231687ac96492d86B7D6fA934a6277e0e8(remapped to 0x0D775cB54B75e3Ee6150768C7a1a517a034C1e34) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key b8d582fabe11bcb3ec53716a9d4b852a64a8a2f906df72f5c55c2f6da04ecd70 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1385 from 0x52A06923DF5C8f2469C50e0bB342027f675BA866(remapped to 0xbE3A6cA5Fd431F13a2a658A06feB666568A08b85) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key dc0920d2e05df92015c3ad5d82e3de65bb8191622787182c6cb4a8f8d28e7a5c --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1386 from 0x44016bAfDA4B2cf59D1ad410251E7B4b1FB60Fef(remapped to 0x36e36F103099cC09A85030990B5F569986FBa40E) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 97b3c9eb0a0cd22124659328b92637a2ee71e1983fda9591c81541f6c6ccf6d1 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1387 from 0xcF5714Ae240A4312B42Fa5E2a459B474C7C842c3(remapped to 0xeFa3d89287Ea6Da47f9ab7bc1e3E087B7f07ca39) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ac790f79e8da379de993c9a0d9727893d25871d3fe1418f43e8c3478faeac3ed --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1388 from 0xa326272dcf97185DD6d789926FF25485fe35CDe9(remapped to 0xE9389AD194207A49E313dF701161F22C3965E3F4) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 3a490592dde04c2f3b2a56b6995ebd64eceae754bf9654113dd052ec468483cc --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1389 from 0xBC2643800ba5E6A8FCBE762a2975854604c880F1(remapped to 0x79C0F66896C9C3eeCbdCE935843CbD2C29b98798) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 98660799c10a04f232f3b528751822846f3e38cf74f1822a7a80c30b0c21915e --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1390 from 0x5066074702990C3C9CBB0d4Ee23BC8cfDDdCbdbd(remapped to 0x901e4991F040C4Da9e55c05D778B16F68E54E91D) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ab2fec9ddc9b55b1a5a507d31cf25d563f2a9a11ce59f4e118d922349081f0c1 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1391 from 0xd5a7cAF6f763Fe3EdCA79E02AD3B883f49cA1623(remapped to 0x76900187eC0ECA9Bd888932744F7819868c7281C) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 7f83fadc7b0fac8ac073f11c20617d56fa9fe1fc71451a7bf258c272e604a81d --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1392 from 0x1Cd9A5576B17cedb2bEa763Aba549aE39Fce54c8(remapped to 0x0714d889cbE45c87E86f4d2f231b962d63f3ED23) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 1d23f4f6a7f476e16491c7925b18d57f3a2579ddc88e60aaafaf1dcf0dd96202 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1393 from 0xf5eb25F12c1D15365C52d6590d07E8360bE1DBFD(remapped to 0xdc6c2b88fe7Eb0b5BA5e404da72e90867FBF0e6e) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 04f189c904d2e10b9f70a08e2d6291d184000d128da2caf5b1f6be5b76b5be86 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1394 from 0x4e416F45E27A4B6a0229b829ed6330960248E909(remapped to 0xFaE982768cEBd63e52d5fa642152deee1Bf65161) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key acdf48b58a7bbd305af70b28f02d33de42ce5013f2c65c8966fb2d6f8f110d3b --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1395 from 0x97AeB6967fBA4ddbbC93Cb12E74d42cFE794E120(remapped to 0x1E64fa1AE12492fEc9eFB9270AC5Ce44EfB4F9Ee) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key b67082e4d021306d8abe373ece6159671945675c09959acbf6168942533988a9 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1396 from 0xFA848a1574de8640CbBEC2F8d8fBC27807688552(remapped to 0x345A41078fa019aaC23A9D04df714498A45fA30E) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 1f6ee7b9d3739f37f446c971ce39fe922f21e20c24ddd6af6f57d67341ed9289 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1397 from 0x66B6cff53054e14e769d640186846b391B6884e0(remapped to 0xe04e0047d57CC975050Da4279F4d417F1dBD3849) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ca8c3a2ee5c4fc8afbe2556644d8792e039771d06c8f5918b82d94f5d2e35b76 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1398 from 0xf4a6B2b8733936A39f514f113E057C908CD80fE1(remapped to 0x838BaE625a00522325025Fa643f0a5279e5b5C4b) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 15f9aa7d157aa86578ea05a93a85a0542538dfbbce488e1b2dd31d5dbfc50f0d --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1399 from 0x3d61FEA18e99Abf6D9cD85Bd016a6f1421ee4A3d(remapped to 0x82Ae391e9867d70dCf3e66EcDeEbd543E727a71e) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 74d4fae9926080ac30f3abfc894990c4caf3f01c2478bc657c52233e0ffd93c7 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1400 from 0x77836123dF51C841b2660A8A40A50372220e6683(remapped to 0xc99DeD251708678cd1e9499b235CFF46ecf4f543) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 52cf9258a49f4c0aa97a0fece83b7b014eb28f5645bb126aeec419aeec44359d --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1401 from 0xFa1B769d80D30AcAB7b8933146F86FfB450449f6(remapped to 0xe79800C19280b90F326ef87979Af4F79dEd2b35A) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 81bfe471d71f7312503bc4f0fdad23207c5cb77e30a29e671e9431937ce17f9d --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1402 from 0xB20B0cD12dF53d413E4CcbafBA9Feb69a0407702(remapped to 0x2d12e48133eDA693242408c96fd67aa7Cb0B3d4A) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 81040be1fb7509f9a3b77553717bdb2787854fb7c7f8543df7d313b6476f83a3 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1403 from 0xFf917528F4e72D9A7423d242bDbe7aac1b7c8064(remapped to 0x49F2f380076C286c7E5D17F9eFcC2bb861F41AB9) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9c5daa7a4617c3e00c13d5375316d7687caff92312dd7fdfd1f841ac7683ef5a --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1404 from 0x0787a271135c1E5AB4a4F51Af8A42A563E38CCD0(remapped to 0x4f77F511451cA5C76129CD86034853eFE10092C8) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key a94669da2a91a402b91a37abc069726d2ed982cf46128a30ec00bd287893764d --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1405 from 0x9826c750Fea6A0aBB02F1E5489ce23C471C74c92(remapped to 0xbF16e8D754e97A3038759122457aEb9242A3e696) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 6b938f9d6526bbe1849268a920f8b38ccfc4a90eef29ae664ebc296fb05848fc --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1406 from 0xC069C44a5979a8AB081A97C4488DB9d44BFE67aC(remapped to 0x9A04Ea854530e26C72178a35E277623362d2BcD0) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 49bf8fa1b50358b79ebaba9ee6f22604ae369058e8d8b207408981ae137acba8 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1407 from 0xb2bCaBe26F9AF9a7Afcee95853C7E33554Bd219C(remapped to 0x9406D79Cc21FE3d78D2E72144d67E6bf52212105) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 16268e2870dfc2142d05e5b80dacd8ad6463c59dec56dbc6f2c3cfcbbeb9919d --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1408 from 0xBBB06E98CF4E00c8cDA42c3C8b862de7cC3f520D(remapped to 0xAF2D4C8961Ed27b1A900F7AF725aD4d5235dF12c) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c7eb488337f076ce9369821969ff0b02a6b21d76fb986a0f7929241e0a467168 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1409 from 0xFCb7d712eFc408D2b78Cd698f2025D1A85D83a84(remapped to 0xB8B60bdF1A67E9e6EA21125F0A0027D9E3f57B24) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 0d77e114e860bfa98961480440c30d269c13abf7c0dc6a8e1a651309d90b3712 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1410 from 0x3B49C58fEca066328089cFFeBAF751ee2Afe71DE(remapped to 0xb68f448af8C217c20d24d6De202313AdCD30BfeD) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 7c6451dcc5211ed36f03e141ca55a9c0b2aeb59494797827dd74d42c93a4fb6b --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1411 from 0x03D6DBaf9684C9bbA818A9bE1F66300e8DeEc8fB(remapped to 0x6cE3ce6C91DD2f5CcC405902eFB4dEbb619ECB75) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 770e5df61a4bd9644f8eab74233e55fad1df07f0cd061d14b152293336d9a5e6 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1412 from 0x0F47FBBC2aB600cff2D8da94Dd53c8De11fA8EC2(remapped to 0x1c23e4Ca648E51E3999a3eFc1f13a4c0899b575a) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key d2783d72dcac6b0a579145f252f17b5f90cb58d89f5c17d191b285b29989a9b0 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1413 from 0xF5426f5D6F46Eb6a861adEdD37da9F3bd4EeB05B(remapped to 0x7bD4AaAe02Fe0057Cc9e2E80f1624FdCedF3532F) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 831641f15bdf284f85b7231f21a8e9846fc4b0c9163368b057e698ede637358c --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1414 from 0x7A0Afb8c22D099e8d9353207c7053174b71F9fF0(remapped to 0x49Ce8843b86Ec91FA4e6bb9a95df733258BF0c9a) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 3b3afac5fb0c8508af5427fec2575706ffe41752f96e9f2bb83c4e20854ec7c6 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1415 from 0xA1e2E8702c87DfB9B3882b319eEEf6cfF9E289Ad(remapped to 0xC708CD339726D9ba11383dFDA797BA899AC72C96) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c4244e0a3ed003c477bb7e665d8836ddb7b2f27e3494bb1808c4b60e74ebdbd2 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1416 from 0x9BbA6A5A1289EB02Df3Ff4bB66d526d1f33ae92c(remapped to 0x2b57c8e9AbF013Cf3fB1D2Cad32AD48Ba20Ae972) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ea73cbe8bdf03688e9e7ab0409b56b9bd4e949de70538fab1802edbae4077260 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1417 from 0xd58cB804098D02aa6EF99982D04BAF36D784fA7F(remapped to 0x4dacae34645b1a4433390aCeCF7a42c46D30b142) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key b96d6a9be0daf50efa8524cc48bec69f5936f9f5af7f37db7bb531fc7b4485d3 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1418 from 0xabb152795d0a1c12ced3b6c67839F8dfC1b69C98(remapped to 0x32C7B10124675664b2339BB421e9FEb0c0aC50b1) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 31fa47c9340f4b2a2e5658766d440e1aa6847bc9b12959b62c4d598b1bd2bcb8 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1419 from 0xE65253613f215241c99567F89Cc814567a481116(remapped to 0x26bCEA98FD842B96dD092eD6aFeF581Ed43Ddb7c) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 12693cdbce4b6b618a083d3c1acbd1d68d27ab3d3642a612758be3d9461741fd --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1420 from 0xC13928e81b595D2256c9753fC7989Ac902d0CEE7(remapped to 0x1A6f0a395A75bC0aA801a69E402EFC0ACA4e0a48) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key a1ef8171023b863fb5e77b2320ac704dee718595c14fb43fc5d44942a511fca2 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1421 from 0x83c85c0dd6F552a61743FA28F94c92C34Ba12F8a(remapped to 0x3B447Ec2344f036730145fFD31C89901d35f45f1) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 0639407e40b8a0430772263b211792aab40997a8dce7c083734625c31b7745f7 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1422 from 0xBc335622F9f0316D2435507aF3F543424906B7b5(remapped to 0x84B7d31b72a8B664B85d2F83cF0CcD2d23145a73) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f9abbc23952b54063597c8c9450531289fed2c4c15caadd948b760a90e622a58 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1423 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x518B184C373048A6A12541859D3C355854d10043) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 38252eccf0dbd6d7a01742f1687d0df438c84dcd06cadedb5b44575ef10e6f7c --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

