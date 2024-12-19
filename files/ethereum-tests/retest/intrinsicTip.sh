# PRV_KEY for master sender 0x5D64DD82d21af319b1CcAEC5eBA3A0762bCB3D72
PRV_KEY=0b5ae74070c93c3bad2b21258ec7eb79d5a16bee0bf9c8a3066c78ea5a9b24a1
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test intrinsicTip (src/BlockchainTestsFiller/ValidBlocks/bcEIP1559/intrinsicTipFiller.yml)"

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x85A1f6caf7EA8885452ca898F9408325f2bE7144) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x85A1f6caf7EA8885452ca898F9408325f2bE7144 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xe2AFf99a29fADcd427b47b514b42ee5394913A01(remapped to 0x1Cbf5330B7acE3Cf949B91A212f8E3Db812B964A) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x1Cbf5330B7acE3Cf949B91A212f8E3Db812B964A | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x6c5F5b28B10d021bf947e626Bf4565C8957162B4(remapped to 0x05a971aBc8A8635ED468608d1491F8BBD5590EbD) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x05a971aBc8A8635ED468608d1491F8BBD5590EbD | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x3D0fE89106005C4Dfe13b1DfdDFa6c012F0FbC45(remapped to 0xc933189DfE9c89A5cFCbF6429b40745b21aCBD1e) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xc933189DfE9c89A5cFCbF6429b40745b21aCBD1e | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x32BcEef44283dba687554010aCd79838aFAc8daf(remapped to 0x4276890bD7c5Eb9825aC527a8055b349BB52bD64) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x4276890bD7c5Eb9825aC527a8055b349BB52bD64 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x387c92d4D20731FA792c392D81f717f246b59d3f(remapped to 0xa8f4529b6B25B78e67F7DFAB99abc85753ce17EF) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xa8f4529b6B25B78e67F7DFAB99abc85753ce17EF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xD3e613c808af8C79d0eAc680c97a55252Ed612E4(remapped to 0xe6018d354Fb5800C93bEf9c4E5E7E7f07CE95bD5) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xe6018d354Fb5800C93bEf9c4E5E7E7f07CE95bD5 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xB0Fc229D18A7F912056a48b19DF7cEb81D5A11ce(remapped to 0x04b8D2Af59DA6f601321dd189620028E651F6499) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x04b8D2Af59DA6f601321dd189620028E651F6499 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xB5490DCbdCBE9fDd913BF9b875d49e2B1b1FB134(remapped to 0x87B9C4E469f2854893904cb5fD448D963286D546) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x87B9C4E469f2854893904cb5fD448D963286D546 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xD8532747C5719E0e2A7BCaF4F554E280c537fC41(remapped to 0xDDD836FBFca40a301984cB3337489ae241002082) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xDDD836FBFca40a301984cB3337489ae241002082 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x4C2B54bC284422ac56062dBFf1F8c37D85FACc52(remapped to 0x6737103f64a53839AB0D3c6902fDC6841800B8fB) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x6737103f64a53839AB0D3c6902fDC6841800B8fB | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x0f752cbdef4ef9A5F014bEF8db9824B7Bc4C4FA6(remapped to 0x2D761Ab7d8343d05389feE32321563e3dFb515Dd) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x2D761Ab7d8343d05389feE32321563e3dFb515Dd | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xDA3F16869c64cF7B5d2Cac5B1db508A8e0675855(remapped to 0x5e82d6B8F1296CE5f5E3F60414890595405d75Eb) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x5e82d6B8F1296CE5f5E3F60414890595405d75Eb | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xa17EEAd3AaaE02Db92F0f1DDEFb183B5265eDC14(remapped to 0x2c2E2b1856Ef89dEe80586B88eb2c119aA248fce) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x2c2E2b1856Ef89dEe80586B88eb2c119aA248fce | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xcc8B252a735FD1c4F0108ac34eb7859646Ce6fdE(remapped to 0x2C5514fCF00c8c11BE91242d84B01270479d0b99) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x2C5514fCF00c8c11BE91242d84B01270479d0b99 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xec0a4cA21deD8797394CEF1B800b17a9b1D3B9B8(remapped to 0xa793216A4EccBb7fa5ff64c63c3a2B23fd8C25ee) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xa793216A4EccBb7fa5ff64c63c3a2B23fd8C25ee | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x9141007e16C363Bf9cbE916C18E73F127aE7755E(remapped to 0x565F4F86C51ecaC01d117A4406FB31380C6062d2) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x565F4F86C51ecaC01d117A4406FB31380C6062d2 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xAF7b8037BB4034b833e25ddd3EC1Af2c86f50e04(remapped to 0x057D9d0e1072aa68b99fFd17DdA5cA710BDd6415) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x057D9d0e1072aa68b99fFd17DdA5cA710BDd6415 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xd38E4AC4BAC1464407B6AB25ECF371D1c52ADe82(remapped to 0xddF6563B3F7c7D1DC40fd9Ce8a0574AD79641CA0) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xddF6563B3F7c7D1DC40fd9Ce8a0574AD79641CA0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x5c2DB6fB75d479996298C3605031ee71c0a56E71(remapped to 0x6b03F31152E87Aca08556A62fe92737e62D647FD) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x6b03F31152E87Aca08556A62fe92737e62D647FD | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x791456f824C01F05664cA04c7992b5264d5A65C7(remapped to 0x46447D8BD55cf5497d8a4E5679Add1bdE0940483) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x46447D8BD55cf5497d8a4E5679Add1bdE0940483 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xaDA7d6b05680CE6B44D95b18b3fC456122A41ED3(remapped to 0x236AfFc22DA7d4e0De82E3d2891eD6B30660Df15) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x236AfFc22DA7d4e0De82E3d2891eD6B30660Df15 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xAcfd3a231687ac96492d86B7D6fA934a6277e0e8(remapped to 0xa950c9b7995f5d69392cbdBf724923f9a096660b) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xa950c9b7995f5d69392cbdBf724923f9a096660b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x52A06923DF5C8f2469C50e0bB342027f675BA866(remapped to 0xB10a4D067bd0EFE682D5643A3265b78A1700A411) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xB10a4D067bd0EFE682D5643A3265b78A1700A411 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x44016bAfDA4B2cf59D1ad410251E7B4b1FB60Fef(remapped to 0x0610fcd8aF9337F2E5373a1d57Bd1546259F3A64) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x0610fcd8aF9337F2E5373a1d57Bd1546259F3A64 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xcF5714Ae240A4312B42Fa5E2a459B474C7C842c3(remapped to 0x59b6cdaCa8ab8714a3EEF608FA59D624CFc7Ce1D) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x59b6cdaCa8ab8714a3EEF608FA59D624CFc7Ce1D | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xa326272dcf97185DD6d789926FF25485fe35CDe9(remapped to 0x93bBD28f65961Bc4c25E52b51D2A073bD09c3C49) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x93bBD28f65961Bc4c25E52b51D2A073bD09c3C49 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xBC2643800ba5E6A8FCBE762a2975854604c880F1(remapped to 0x4634e374467ba207e7B976c13E41Fc8754E83B3b) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x4634e374467ba207e7B976c13E41Fc8754E83B3b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x5066074702990C3C9CBB0d4Ee23BC8cfDDdCbdbd(remapped to 0xe9cF05CeD3f0dDe78e7305a9DeC7548d7c4ADC1D) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xe9cF05CeD3f0dDe78e7305a9DeC7548d7c4ADC1D | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xd5a7cAF6f763Fe3EdCA79E02AD3B883f49cA1623(remapped to 0x7Cae8D1ff6D0ba7D3f56Ac6b28e33fac6eD6f9de) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x7Cae8D1ff6D0ba7D3f56Ac6b28e33fac6eD6f9de | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x1Cd9A5576B17cedb2bEa763Aba549aE39Fce54c8(remapped to 0x36108d4f0cb79b2f7a49bd8De3348aBeE6946Fb9) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x36108d4f0cb79b2f7a49bd8De3348aBeE6946Fb9 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xf5eb25F12c1D15365C52d6590d07E8360bE1DBFD(remapped to 0x3879A811a4F073321f14204297BFFa2E87e9d513) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x3879A811a4F073321f14204297BFFa2E87e9d513 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x4e416F45E27A4B6a0229b829ed6330960248E909(remapped to 0xcD2089b6b61A7fa402E209a1B8B66bDC9f34Fe87) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xcD2089b6b61A7fa402E209a1B8B66bDC9f34Fe87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x97AeB6967fBA4ddbbC93Cb12E74d42cFE794E120(remapped to 0x316e50e3195d438C5C2c7434DAeEA0b52905506E) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x316e50e3195d438C5C2c7434DAeEA0b52905506E | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xFA848a1574de8640CbBEC2F8d8fBC27807688552(remapped to 0x0863F1A3676dd795557ba1CE77C84F9131d5B1FD) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x0863F1A3676dd795557ba1CE77C84F9131d5B1FD | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x66B6cff53054e14e769d640186846b391B6884e0(remapped to 0xa6FA8C91E56260076A4e6066DaC37690D6B5623d) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xa6FA8C91E56260076A4e6066DaC37690D6B5623d | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xf4a6B2b8733936A39f514f113E057C908CD80fE1(remapped to 0x370d865e25e95923eF5bCC0Cd204Dab9F5aF44D0) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x370d865e25e95923eF5bCC0Cd204Dab9F5aF44D0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x3d61FEA18e99Abf6D9cD85Bd016a6f1421ee4A3d(remapped to 0x32eeDf5E05C6d951A4DA94537D601D5F2b58DaAF) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x32eeDf5E05C6d951A4DA94537D601D5F2b58DaAF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x77836123dF51C841b2660A8A40A50372220e6683(remapped to 0xb50719C231b2741cfb0394b567e6Aa12655Ae1df) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xb50719C231b2741cfb0394b567e6Aa12655Ae1df | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xFa1B769d80D30AcAB7b8933146F86FfB450449f6(remapped to 0xd7F5573c5862ce82eb32edB08bC55BB48E3b60D2) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xd7F5573c5862ce82eb32edB08bC55BB48E3b60D2 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xB20B0cD12dF53d413E4CcbafBA9Feb69a0407702(remapped to 0x421614613a551dC4F20A5bF469a5876FfFb7AC48) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x421614613a551dC4F20A5bF469a5876FfFb7AC48 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xFf917528F4e72D9A7423d242bDbe7aac1b7c8064(remapped to 0x2f2102af2886D08f6FDD7D86192eE25b4D021a04) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x2f2102af2886D08f6FDD7D86192eE25b4D021a04 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x0787a271135c1E5AB4a4F51Af8A42A563E38CCD0(remapped to 0x3b13262FF100B92A9924130943d379B821F8C243) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x3b13262FF100B92A9924130943d379B821F8C243 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x9826c750Fea6A0aBB02F1E5489ce23C471C74c92(remapped to 0x1Ff5c3A264ABFF51679A614ea01b86f7044F2c59) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x1Ff5c3A264ABFF51679A614ea01b86f7044F2c59 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xC069C44a5979a8AB081A97C4488DB9d44BFE67aC(remapped to 0x26ea62B67eC24e85cac147011A6D00fA4b05E75E) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x26ea62B67eC24e85cac147011A6D00fA4b05E75E | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xb2bCaBe26F9AF9a7Afcee95853C7E33554Bd219C(remapped to 0xa029B120BEdfada04bfD591F368799EE00460470) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xa029B120BEdfada04bfD591F368799EE00460470 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xBBB06E98CF4E00c8cDA42c3C8b862de7cC3f520D(remapped to 0x0ae7A279D7aCb1bD7596202A1De178FEe4Ad336d) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x0ae7A279D7aCb1bD7596202A1De178FEe4Ad336d | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xFCb7d712eFc408D2b78Cd698f2025D1A85D83a84(remapped to 0xb966Bd0AFBCd3A0A66C40826298f7B0c698F01B3) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xb966Bd0AFBCd3A0A66C40826298f7B0c698F01B3 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x3B49C58fEca066328089cFFeBAF751ee2Afe71DE(remapped to 0x421e3cEc4135118fa723B4627b9437E37f9dC08B) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x421e3cEc4135118fa723B4627b9437E37f9dC08B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x03D6DBaf9684C9bbA818A9bE1F66300e8DeEc8fB(remapped to 0x7836248873c125034A015d858d5fD378E740F597) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x7836248873c125034A015d858d5fD378E740F597 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x0F47FBBC2aB600cff2D8da94Dd53c8De11fA8EC2(remapped to 0xC3413c33f63e10Aa4A14B9221Af255aF0A6B9A89) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xC3413c33f63e10Aa4A14B9221Af255aF0A6B9A89 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xF5426f5D6F46Eb6a861adEdD37da9F3bd4EeB05B(remapped to 0x959434FEe62AC01F0C9F722D61F50a4F5C341827) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x959434FEe62AC01F0C9F722D61F50a4F5C341827 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x7A0Afb8c22D099e8d9353207c7053174b71F9fF0(remapped to 0xBf3f2D30ebAD3b400a88b0E7b1238C4e023C7C03) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xBf3f2D30ebAD3b400a88b0E7b1238C4e023C7C03 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xA1e2E8702c87DfB9B3882b319eEEf6cfF9E289Ad(remapped to 0xcf59D8b362Af0824d1C29D67DE77B7BDB9aF6575) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xcf59D8b362Af0824d1C29D67DE77B7BDB9aF6575 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x9BbA6A5A1289EB02Df3Ff4bB66d526d1f33ae92c(remapped to 0xE70B4e0Fd1dfB66511cab37126B90e5E623a5513) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xE70B4e0Fd1dfB66511cab37126B90e5E623a5513 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xd58cB804098D02aa6EF99982D04BAF36D784fA7F(remapped to 0x244CaFaBfD01052f3481AF4cb34b0346B40A5445) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x244CaFaBfD01052f3481AF4cb34b0346B40A5445 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xabb152795d0a1c12ced3b6c67839F8dfC1b69C98(remapped to 0x058B17afE94C23826351E2673484520CdC27c7F8) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x058B17afE94C23826351E2673484520CdC27c7F8 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xE65253613f215241c99567F89Cc814567a481116(remapped to 0x92d4405431Ba81D1e48085d3C3B732e5a5824034) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x92d4405431Ba81D1e48085d3C3B732e5a5824034 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xC13928e81b595D2256c9753fC7989Ac902d0CEE7(remapped to 0x2647Dc22b278bB8a11Aa9E24AB7bE081C9694769) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x2647Dc22b278bB8a11Aa9E24AB7bE081C9694769 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0x83c85c0dd6F552a61743FA28F94c92C34Ba12F8a(remapped to 0x4eF612561e5f479B1a92278702f6E07e842c28Ae) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x4eF612561e5f479B1a92278702f6E07e842c28Ae | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[intrinsicTip] Funding sender 0xBc335622F9f0316D2435507aF3F543424906B7b5(remapped to 0x55D2dbc26B10f72B61A571146BbAA67E02504038) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x55D2dbc26B10f72B61A571146BbAA67E02504038 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccc with code and balance 1099511627776..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 6300000003601260003963000000036000F33a4355 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

echo "[intrinsicTip] Creating receiver 0x1111111111111111111111111111111111111111 with code and balance 1099511627776..."
ADDR_1111111111111111111111111111111111111111=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 63000007a1601260003963000007a16000F3610020565b60006104b064174876e800833181038281049350505050919050565b61003d73e2aff99a29fadcd427b47b514b42ee5394913a01610004565b60005561005d736c5f5b28b10d021bf947e626bf4565c8957162b4610004565b60015561007d733d0fe89106005c4dfe13b1dfddfa6c012f0fbc45610004565b60025561009d7332bceef44283dba687554010acd79838afac8daf610004565b6003556100bd73387c92d4d20731fa792c392d81f717f246b59d3f610004565b6004556100dd73d3e613c808af8c79d0eac680c97a55252ed612e4610004565b6005556100fd73b0fc229d18a7f912056a48b19df7ceb81d5a11ce610004565b60065561011d73b5490dcbdcbe9fdd913bf9b875d49e2b1b1fb134610004565b60075561013d73d8532747c5719e0e2a7bcaf4f554e280c537fc41610004565b60085561015d734c2b54bc284422ac56062dbff1f8c37d85facc52610004565b60095561017d730f752cbdef4ef9a5f014bef8db9824b7bc4c4fa6610004565b600a5561019d73da3f16869c64cf7b5d2cac5b1db508a8e0675855610004565b600b556101bd73a17eead3aaae02db92f0f1ddefb183b5265edc14610004565b600c556101dd73cc8b252a735fd1c4f0108ac34eb7859646ce6fde610004565b600d556101fd73ec0a4ca21ded8797394cef1b800b17a9b1d3b9b8610004565b600e5561021d739141007e16c363bf9cbe916c18e73f127ae7755e610004565b600f5561023d73af7b8037bb4034b833e25ddd3ec1af2c86f50e04610004565b60105561025d73d38e4ac4bac1464407b6ab25ecf371d1c52ade82610004565b60115561027d735c2db6fb75d479996298c3605031ee71c0a56e71610004565b60125561029d73791456f824c01f05664ca04c7992b5264d5a65c7610004565b6013556102bd73ada7d6b05680ce6b44d95b18b3fc456122a41ed3610004565b6014556102dd73acfd3a231687ac96492d86b7d6fa934a6277e0e8610004565b6015556102fd7352a06923df5c8f2469c50e0bb342027f675ba866610004565b60165561031d7344016bafda4b2cf59d1ad410251e7b4b1fb60fef610004565b60175561033d73cf5714ae240a4312b42fa5e2a459b474c7c842c3610004565b60185561035d73a326272dcf97185dd6d789926ff25485fe35cde9610004565b60195561037d73bc2643800ba5e6a8fcbe762a2975854604c880f1610004565b601a5561039d735066074702990c3c9cbb0d4ee23bc8cfdddcbdbd610004565b601b556103bd73d5a7caf6f763fe3edca79e02ad3b883f49ca1623610004565b601c556103dd731cd9a5576b17cedb2bea763aba549ae39fce54c8610004565b601d556103fd73f5eb25f12c1d15365c52d6590d07e8360be1dbfd610004565b601e5561041d734e416f45e27a4b6a0229b829ed6330960248e909610004565b601f5561043d7397aeb6967fba4ddbbc93cb12e74d42cfe794e120610004565b60205561045d73fa848a1574de8640cbbec2f8d8fbc27807688552610004565b60215561047d7366b6cff53054e14e769d640186846b391b6884e0610004565b60225561049d73f4a6b2b8733936a39f514f113e057c908cd80fe1610004565b6023556104bd733d61fea18e99abf6d9cd85bd016a6f1421ee4a3d610004565b6024556104dd7377836123df51c841b2660a8a40a50372220e6683610004565b6025556104fd73fa1b769d80d30acab7b8933146f86ffb450449f6610004565b60265561051d73b20b0cd12df53d413e4ccbafba9feb69a0407702610004565b60275561053d73ff917528f4e72d9a7423d242bdbe7aac1b7c8064610004565b60285561055d730787a271135c1e5ab4a4f51af8a42a563e38ccd0610004565b60295561057d739826c750fea6a0abb02f1e5489ce23c471c74c92610004565b602a5561059d73c069c44a5979a8ab081a97c4488db9d44bfe67ac610004565b602b556105bd73b2bcabe26f9af9a7afcee95853c7e33554bd219c610004565b602c556105dd73bbb06e98cf4e00c8cda42c3c8b862de7cc3f520d610004565b602d556105fd73fcb7d712efc408d2b78cd698f2025d1a85d83a84610004565b602e5561061d733b49c58feca066328089cffebaf751ee2afe71de610004565b602f5561063d7303d6dbaf9684c9bba818a9be1f66300e8deec8fb610004565b60305561065d730f47fbbc2ab600cff2d8da94dd53c8de11fa8ec2610004565b60315561067d73f5426f5d6f46eb6a861adedd37da9f3bd4eeb05b610004565b60325561069d737a0afb8c22d099e8d9353207c7053174b71f9ff0610004565b6033556106bd73a1e2e8702c87dfb9b3882b319eeef6cff9e289ad610004565b6034556106dd739bba6a5a1289eb02df3ff4bb66d526d1f33ae92c610004565b6035556106fd73d58cb804098d02aa6ef99982d04baf36d784fa7f610004565b60365561071d73abb152795d0a1c12ced3b6c67839f8dfc1b69c98610004565b60375561073d73e65253613f215241c99567f89cc814567a481116610004565b60385561075d73c13928e81b595d2256c9753fc7989ac902d0cee7610004565b60395561077d7383c85c0dd6f552a61743fa28f94c92c34ba12f8a610004565b603a5561079d73bc335622f9f0316d2435507af3f543424906b7b5610004565b603b55 | jq -r .contractAddress)
echo $ADDR_1111111111111111111111111111111111111111

echo "[intrinsicTip] Processing transaction number 1362 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x85A1f6caf7EA8885452ca898F9408325f2bE7144) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key a4adff44e0f8c060b3fb4227e09a83925811fdb329cedc9c9415480214101b77 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1363 from 0xe2AFf99a29fADcd427b47b514b42ee5394913A01(remapped to 0x1Cbf5330B7acE3Cf949B91A212f8E3Db812B964A) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 836d3e7706501218dc88196bde3652df796abdcd552ed1f1c2d501a904710123 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1364 from 0x6c5F5b28B10d021bf947e626Bf4565C8957162B4(remapped to 0x05a971aBc8A8635ED468608d1491F8BBD5590EbD) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d1a05e7d989381eacc1401977b555857800183fb88dc6d4e131ecf6686a1124f --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1365 from 0x3D0fE89106005C4Dfe13b1DfdDFa6c012F0FbC45(remapped to 0xc933189DfE9c89A5cFCbF6429b40745b21aCBD1e) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key fcf0f7552fc318308f3cad7cbd9f653bdf1874c0b33bfced91918d3aaf42b3bf --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1366 from 0x32BcEef44283dba687554010aCd79838aFAc8daf(remapped to 0x4276890bD7c5Eb9825aC527a8055b349BB52bD64) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ead237d9a2503dbc1e845c7786f82284aa21e2e33209d89a460cf568bbe330a9 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1367 from 0x387c92d4D20731FA792c392D81f717f246b59d3f(remapped to 0xa8f4529b6B25B78e67F7DFAB99abc85753ce17EF) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 57f291d85e452343f5f125251c966412733b47cb36b50356db1e110e754b6acf --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1368 from 0xD3e613c808af8C79d0eAc680c97a55252Ed612E4(remapped to 0xe6018d354Fb5800C93bEf9c4E5E7E7f07CE95bD5) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 5f486e002dbece2693b1b35ab5ee00bdf9bed60046b0784a35149b1e48dcf695 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1369 from 0xB0Fc229D18A7F912056a48b19DF7cEb81D5A11ce(remapped to 0x04b8D2Af59DA6f601321dd189620028E651F6499) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key eec418bd3cdffaaaaaf33b742714feeb22b926adbf753f14a230f7a4cbf4335e --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1370 from 0xB5490DCbdCBE9fDd913BF9b875d49e2B1b1FB134(remapped to 0x87B9C4E469f2854893904cb5fD448D963286D546) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f035dbe4eb1e48fd8604c10e374b1525afe934ff25870129084318bb94ea1005 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1371 from 0xD8532747C5719E0e2A7BCaF4F554E280c537fC41(remapped to 0xDDD836FBFca40a301984cB3337489ae241002082) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d6ff5eec7b890e7c54f4ac97e1d6ebddfb232081e9686f34d88f6fe32c3c1702 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1372 from 0x4C2B54bC284422ac56062dBFf1F8c37D85FACc52(remapped to 0x6737103f64a53839AB0D3c6902fDC6841800B8fB) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d8910d7e2e1b74b8ac88792ebf4c8fad88f09b6aefe54d01d1c98b609f72bd06 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1373 from 0x0f752cbdef4ef9A5F014bEF8db9824B7Bc4C4FA6(remapped to 0x2D761Ab7d8343d05389feE32321563e3dFb515Dd) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 1489e56e880e2ca94f5099368cd986bce3569cc2c8f4843d4ebaad0c31c9db71 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1374 from 0xDA3F16869c64cF7B5d2Cac5B1db508A8e0675855(remapped to 0x5e82d6B8F1296CE5f5E3F60414890595405d75Eb) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 02e190bc97c34f570df6831a947ffe72f413be162490d74926174173aeae3f16 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1375 from 0xa17EEAd3AaaE02Db92F0f1DDEFb183B5265eDC14(remapped to 0x2c2E2b1856Ef89dEe80586B88eb2c119aA248fce) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 1913f2aac5ada8a68e04d49990d11f6015ddf6654d0e71137b79ff7369dbbf83 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1376 from 0xcc8B252a735FD1c4F0108ac34eb7859646Ce6fdE(remapped to 0x2C5514fCF00c8c11BE91242d84B01270479d0b99) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key c3247f7ffab116e87b0343951901c11595704b4f62aea5163ca95d7074e3f272 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1377 from 0xec0a4cA21deD8797394CEF1B800b17a9b1D3B9B8(remapped to 0xa793216A4EccBb7fa5ff64c63c3a2B23fd8C25ee) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 13d2df1c13c11d86f825c76ecafd10fde59354d23f954174b56a2e5f648062f8 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1378 from 0x9141007e16C363Bf9cbE916C18E73F127aE7755E(remapped to 0x565F4F86C51ecaC01d117A4406FB31380C6062d2) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 451cc8b1422524b6f076f6ed88ff38b00f0dd0ccd0d4cd7b5919f35051b4d52f --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1379 from 0xAF7b8037BB4034b833e25ddd3EC1Af2c86f50e04(remapped to 0x057D9d0e1072aa68b99fFd17DdA5cA710BDd6415) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 3e161a0c5d98916a76b3235278eb886cb3888e9402ca866e176c3624e7516c4b --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1380 from 0xd38E4AC4BAC1464407B6AB25ECF371D1c52ADe82(remapped to 0xddF6563B3F7c7D1DC40fd9Ce8a0574AD79641CA0) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key e13092ab11367243946e73c0fb74a3b045e08256efdc80b42776505d10ac3ffe --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1381 from 0x5c2DB6fB75d479996298C3605031ee71c0a56E71(remapped to 0x6b03F31152E87Aca08556A62fe92737e62D647FD) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 517159a45592bf729bc3babe12104633331a8f45eebd61a86e23c247c0cc3624 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1382 from 0x791456f824C01F05664cA04c7992b5264d5A65C7(remapped to 0x46447D8BD55cf5497d8a4E5679Add1bdE0940483) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ad1dad12684ffea75299cbce5f4cffb34bdb71cd53442ec14afd8dc94f453108 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1383 from 0xaDA7d6b05680CE6B44D95b18b3fC456122A41ED3(remapped to 0x236AfFc22DA7d4e0De82E3d2891eD6B30660Df15) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 69d454092fc8221e79cabdf0e01b0ee8f313a424d46d8b68ed29178ca0fa5cf9 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1384 from 0xAcfd3a231687ac96492d86B7D6fA934a6277e0e8(remapped to 0xa950c9b7995f5d69392cbdBf724923f9a096660b) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d6a36b58289b85de1dffe73d9d07ca75b97684d089e7703c8cce0354b043c12d --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1385 from 0x52A06923DF5C8f2469C50e0bB342027f675BA866(remapped to 0xB10a4D067bd0EFE682D5643A3265b78A1700A411) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 75240b5aa10690eed681ee6e7978849691d8deec123759a03cda34f83ecb7f82 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1386 from 0x44016bAfDA4B2cf59D1ad410251E7B4b1FB60Fef(remapped to 0x0610fcd8aF9337F2E5373a1d57Bd1546259F3A64) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key bae0a2f059e8af5f9333b20c1f61ae46dbb81702d4450513e1caff743aea41bb --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1387 from 0xcF5714Ae240A4312B42Fa5E2a459B474C7C842c3(remapped to 0x59b6cdaCa8ab8714a3EEF608FA59D624CFc7Ce1D) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 996e99a598885c202bb2d5513fce354f4b0e4efceaa6d4770e377f00e262be4b --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1388 from 0xa326272dcf97185DD6d789926FF25485fe35CDe9(remapped to 0x93bBD28f65961Bc4c25E52b51D2A073bD09c3C49) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 188d8b9b6714580fa300a1e53b38f9899521fb352568e88cdb7da6799c8af577 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1389 from 0xBC2643800ba5E6A8FCBE762a2975854604c880F1(remapped to 0x4634e374467ba207e7B976c13E41Fc8754E83B3b) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d7bf17a568eeec442cdbcbcca7a25a3e9ef45e919cc3293797ba17c47ef6425d --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1390 from 0x5066074702990C3C9CBB0d4Ee23BC8cfDDdCbdbd(remapped to 0xe9cF05CeD3f0dDe78e7305a9DeC7548d7c4ADC1D) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b17adf94a189062069ac8cbfb31e52e71e47ec53c4d47320937c02881998bca5 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1391 from 0xd5a7cAF6f763Fe3EdCA79E02AD3B883f49cA1623(remapped to 0x7Cae8D1ff6D0ba7D3f56Ac6b28e33fac6eD6f9de) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 5680f461a40373c21bd049244278efc370cc6f0da0866db9c03e4fc6f1bf686d --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1392 from 0x1Cd9A5576B17cedb2bEa763Aba549aE39Fce54c8(remapped to 0x36108d4f0cb79b2f7a49bd8De3348aBeE6946Fb9) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 17f3a53342720ae9e60ac80e09c0e3fd3dbcd1fb966cbf9d36717a26983d6e76 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1393 from 0xf5eb25F12c1D15365C52d6590d07E8360bE1DBFD(remapped to 0x3879A811a4F073321f14204297BFFa2E87e9d513) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 0d0c57e6a2759ea390f4f518d3773521c3b4d0e302d92c22f60b9924061cc07c --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1394 from 0x4e416F45E27A4B6a0229b829ed6330960248E909(remapped to 0xcD2089b6b61A7fa402E209a1B8B66bDC9f34Fe87) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ccbe7745b229f3f5a20223d0ff1aab2cf4d65225d5679ed0862254f662d897d2 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1395 from 0x97AeB6967fBA4ddbbC93Cb12E74d42cFE794E120(remapped to 0x316e50e3195d438C5C2c7434DAeEA0b52905506E) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 20422d9e96734087fbc5a40a398319435ad0de2019ce5680cbd3643fd8e04118 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1396 from 0xFA848a1574de8640CbBEC2F8d8fBC27807688552(remapped to 0x0863F1A3676dd795557ba1CE77C84F9131d5B1FD) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 3df5e7455061c287d8221f69dc923fe2055213cccd8c8cb90c2339a3b4949011 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1397 from 0x66B6cff53054e14e769d640186846b391B6884e0(remapped to 0xa6FA8C91E56260076A4e6066DaC37690D6B5623d) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key db4c9eb3853357aa0a8997cc05f2f323645af2219b6a57a755f42f4806bce8ff --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1398 from 0xf4a6B2b8733936A39f514f113E057C908CD80fE1(remapped to 0x370d865e25e95923eF5bCC0Cd204Dab9F5aF44D0) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d4d5d0606245a2de2b015fc43ea4764889f69540399d1303ff09d42098210108 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1399 from 0x3d61FEA18e99Abf6D9cD85Bd016a6f1421ee4A3d(remapped to 0x32eeDf5E05C6d951A4DA94537D601D5F2b58DaAF) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 34c1dbe8c170fa392ade398e1233afaa1dc0c7d95dcad6fa92662a35d4149cac --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1400 from 0x77836123dF51C841b2660A8A40A50372220e6683(remapped to 0xb50719C231b2741cfb0394b567e6Aa12655Ae1df) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 2ec95801d9697ce21b13cf69eacd7941acdf07b3cfd80c4316b6d620962fce56 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1401 from 0xFa1B769d80D30AcAB7b8933146F86FfB450449f6(remapped to 0xd7F5573c5862ce82eb32edB08bC55BB48E3b60D2) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f466548378be43b735e64c18f95bc8d3b1a2792ed10e457c0faea8ae54ec3640 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1402 from 0xB20B0cD12dF53d413E4CcbafBA9Feb69a0407702(remapped to 0x421614613a551dC4F20A5bF469a5876FfFb7AC48) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 0568562fb1dcee58bb7701230a38afb5ecf298560cf2503f278547567e38322e --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1403 from 0xFf917528F4e72D9A7423d242bDbe7aac1b7c8064(remapped to 0x2f2102af2886D08f6FDD7D86192eE25b4D021a04) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 07daee66087ee722c2c3a5319e1d2d6669cb27c5d67e5e34fbda02a8b6486924 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1404 from 0x0787a271135c1E5AB4a4F51Af8A42A563E38CCD0(remapped to 0x3b13262FF100B92A9924130943d379B821F8C243) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 13cbb79ab8efa27751a211c56ef5b59e71890c60c6267668215ebdf0f7252b60 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1405 from 0x9826c750Fea6A0aBB02F1E5489ce23C471C74c92(remapped to 0x1Ff5c3A264ABFF51679A614ea01b86f7044F2c59) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key c0083b8bb1e4973f843444413b183ed4034903f510123781dc4f550a20b55289 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1406 from 0xC069C44a5979a8AB081A97C4488DB9d44BFE67aC(remapped to 0x26ea62B67eC24e85cac147011A6D00fA4b05E75E) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key a428b6077848dc786b50e41e9b6e9ce0f296644a452ecac449862b848d55f71a --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1407 from 0xb2bCaBe26F9AF9a7Afcee95853C7E33554Bd219C(remapped to 0xa029B120BEdfada04bfD591F368799EE00460470) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 94b0938a6583b3306e8e4da804a8ba667a761505c944d55caa9811ea27e1e057 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1408 from 0xBBB06E98CF4E00c8cDA42c3C8b862de7cC3f520D(remapped to 0x0ae7A279D7aCb1bD7596202A1De178FEe4Ad336d) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 96be1649b3ee339a9e91488f92b33442fe8cac13398d31bd938d46e57071e6b8 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1409 from 0xFCb7d712eFc408D2b78Cd698f2025D1A85D83a84(remapped to 0xb966Bd0AFBCd3A0A66C40826298f7B0c698F01B3) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 891256771860bc6341667c62fb3f269c053bc3b5ddff77045881c7a701a6cc55 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1410 from 0x3B49C58fEca066328089cFFeBAF751ee2Afe71DE(remapped to 0x421e3cEc4135118fa723B4627b9437E37f9dC08B) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 0cafdadb60c6195e6ea538c60bddcb56c6e4b31c26e9ab29d04721447f48229a --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1411 from 0x03D6DBaf9684C9bbA818A9bE1F66300e8DeEc8fB(remapped to 0x7836248873c125034A015d858d5fD378E740F597) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 81e31a2986513626592366130a6355200b018f1a0aa1631fc40766b8d6e806cb --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1412 from 0x0F47FBBC2aB600cff2D8da94Dd53c8De11fA8EC2(remapped to 0xC3413c33f63e10Aa4A14B9221Af255aF0A6B9A89) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key bb0bc05113cb6db768f9c48d9413ebb7557663679e7a96ff2e73f2319f4e745a --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1413 from 0xF5426f5D6F46Eb6a861adEdD37da9F3bd4EeB05B(remapped to 0x959434FEe62AC01F0C9F722D61F50a4F5C341827) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 2a4ed5695cae787c83819be65a05e1909ca896b5563b72c09101872e106010f3 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1414 from 0x7A0Afb8c22D099e8d9353207c7053174b71F9fF0(remapped to 0xBf3f2D30ebAD3b400a88b0E7b1238C4e023C7C03) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 6e268003655139f03aece1b176a0ba8deab001d52c8026dc54aad50131a82eb6 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1415 from 0xA1e2E8702c87DfB9B3882b319eEEf6cfF9E289Ad(remapped to 0xcf59D8b362Af0824d1C29D67DE77B7BDB9aF6575) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d021c318af07ca01dc23d98821ce50f50d76114ae142df1b243c5022af618f36 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x1122 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1416 from 0x9BbA6A5A1289EB02Df3Ff4bB66d526d1f33ae92c(remapped to 0xE70B4e0Fd1dfB66511cab37126B90e5E623a5513) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 64797f1cbd40c35cda654c49bc95f80b0baaada7376c58cb26b4e42640b08922 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1417 from 0xd58cB804098D02aa6EF99982D04BAF36D784fA7F(remapped to 0x244CaFaBfD01052f3481AF4cb34b0346B40A5445) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d7da7d953e84336120c14a9cd2a03fe28c57a2e9938f76ee12d949ca5e4e14a8 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1418 from 0xabb152795d0a1c12ced3b6c67839F8dfC1b69C98(remapped to 0x058B17afE94C23826351E2673484520CdC27c7F8) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d83da15bc6b81940aa5d2c7fbb58fcb23683884dd90a8563efe9a9de42126eb3 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x01020304050607080910111213141516171819202122232425262728293031 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1419 from 0xE65253613f215241c99567F89Cc814567a481116(remapped to 0x92d4405431Ba81D1e48085d3C3B732e5a5824034) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 9cb78f59d91b9af5d98a20b735949e881cf5078bc7f59b37686157cb8e893464 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x0102030405060708091011121314151617181920212223242526272829303132 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1420 from 0xC13928e81b595D2256c9753fC7989Ac902d0CEE7(remapped to 0x2647Dc22b278bB8a11Aa9E24AB7bE081C9694769) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 2aabae5dbebcdbeea22e347016e8b3e04f3cc9b068e6716dea8d2f0ffb4ccdca --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1421 from 0x83c85c0dd6F552a61743FA28F94c92C34Ba12F8a(remapped to 0x4eF612561e5f479B1a92278702f6E07e842c28Ae) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key beed648bb261c212cc2d0740b78a98349f7647aaf6f946eb163b31731e33538a --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1422 from 0xBc335622F9f0316D2435507aF3F543424906B7b5(remapped to 0x55D2dbc26B10f72B61A571146BbAA67E02504038) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 0477f28e80ce9fdbd7addebb73a4181565b3b2c0333f44994a4577f0d5319149 --timeout 20 --value 0 0xccccccccccccccccccccccccccccccccccccccc0 0x000000000000000000000000000000000000000000000000000000000000000000010203040506070809101112131415161718192021222324252627282930313233 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[intrinsicTip] Processing transaction number 1423 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x85A1f6caf7EA8885452ca898F9408325f2bE7144) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key a4adff44e0f8c060b3fb4227e09a83925811fdb329cedc9c9415480214101b77 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

