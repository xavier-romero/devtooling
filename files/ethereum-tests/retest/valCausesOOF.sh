# PRV_KEY for master sender 0x5f226ee71Ce654d2f87E80580E6f98E341AE49fB
PRV_KEY=5c4f77c60a91b559a0cd55df3f832162dbc7cd61c84e6be7cfee5cb0fdd0386d
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test valCausesOOF (src/BlockchainTestsFiller/InvalidBlocks/bcEIP1559/valCausesOOFFiller.yml)"

AMOUNT=$((2*150000*3*$GAS_PRICE+0))
echo "[valCausesOOF] Funding sender 0x12c76d0919D86f02524ec28c72236F1174162779(remapped to 0xCc959D2cF3401Be9A748caAf8369Ff1a9B438F3f) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xCc959D2cF3401Be9A748caAf8369Ff1a9B438F3f | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+1))
echo "[valCausesOOF] Funding sender 0x9B614ea711B30B3D54A1c45d2C6f9027EA696FE0(remapped to 0xc45aE1a90476FD06D5b5d6FeaE6462C56A4252d1) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xc45aE1a90476FD06D5b5d6FeaE6462C56A4252d1 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+50000000))
echo "[valCausesOOF] Funding sender 0x808338b1B333587960923cb3dEf6eC3069132eCD(remapped to 0x59A45c3Fe8124F94e86BFee5df9Ae6ea7a2bB3d6) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x59A45c3Fe8124F94e86BFee5df9Ae6ea7a2bB3d6 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+100000002))
echo "[valCausesOOF] Funding sender 0x0FaabbEc1CF7Bf8aE6369c53d56793aaf5421a85(remapped to 0xd159fCF2608c9291742CF3455e288CA6d08dcA31) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xd159fCF2608c9291742CF3455e288CA6d08dcA31 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+180000001))
echo "[valCausesOOF] Funding sender 0x1355D451e77E62FBE82194DF153f28754AbD5172(remapped to 0xF6A006432E015966af8ACE96805dA37C9bEf1D35) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xF6A006432E015966af8ACE96805dA37C9bEf1D35 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+20000001))
echo "[valCausesOOF] Funding sender 0x673585130E6dAbA3ce6ED8E33541835f95a7a5d9(remapped to 0x1f17f9347EaC864eC3705aeDC8aAcf63C61469D5) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x1f17f9347EaC864eC3705aeDC8aAcf63C61469D5 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+20000001))
echo "[valCausesOOF] Funding sender 0x1Fa60939bB376BF080e6C4F3e4544dAD8284331d(remapped to 0xE460d9628AA93e7d6f8d3584dCd9ac502efD273D) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xE460d9628AA93e7d6f8d3584dCd9ac502efD273D | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+10000))
echo "[valCausesOOF] Funding sender 0x40Fe9DDfC9aE9EB172F88a137432CC04C01CA5e5(remapped to 0xCb91E5b03c87bF7A37b6DC13DfeB46848c53C560) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xCb91E5b03c87bF7A37b6DC13DfeB46848c53C560 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+10000))
echo "[valCausesOOF] Funding sender 0xe498FbCc6667a818CbE096c503E64Bbd6207EA18(remapped to 0x750B815C2cAf148F3d2614AE0F64B4810eEf4DEe) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x750B815C2cAf148F3d2614AE0F64B4810eEf4DEe | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*3*$GAS_PRICE+900000000))
echo "[valCausesOOF] Funding sender 0xbC6C9ab197Ffd3CE7421DdcC0721959814b50826(remapped to 0x4466f4c74cB76CdB8C47F4880a5b31e8EB47184C) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x4466f4c74cB76CdB8C47F4880a5b31e8EB47184C | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[valCausesOOF] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccc with code and balance 1099511627776..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 6300000020601260003963000000206000F36004355b6000811115601a576160a781556001810390506003565b5033313355 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

echo "[valCausesOOF] Processing transaction number 937 from 0x12c76d0919D86f02524ec28c72236F1174162779(remapped to 0xCc959D2cF3401Be9A748caAf8369Ff1a9B438F3f) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 988b1faa3d5c1af97157418c866e609ba124e3191dc43e76da7c0d9d8dca0962 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[valCausesOOF] Processing transaction number 938 from 0x12c76d0919D86f02524ec28c72236F1174162779(remapped to 0xCc959D2cF3401Be9A748caAf8369Ff1a9B438F3f) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 988b1faa3d5c1af97157418c866e609ba124e3191dc43e76da7c0d9d8dca0962 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[valCausesOOF] Processing transaction number 939 from 0x12c76d0919D86f02524ec28c72236F1174162779(remapped to 0xCc959D2cF3401Be9A748caAf8369Ff1a9B438F3f) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 988b1faa3d5c1af97157418c866e609ba124e3191dc43e76da7c0d9d8dca0962 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[valCausesOOF] Processing transaction number 940 from 0x9B614ea711B30B3D54A1c45d2C6f9027EA696FE0(remapped to 0xc45aE1a90476FD06D5b5d6FeaE6462C56A4252d1) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ae972811ac916f743761f9474f7dc0ba3bc31ceda3337db161c602b2071ba1d3 --timeout 20 --value 1 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[valCausesOOF] Processing transaction number 941 from 0x808338b1B333587960923cb3dEf6eC3069132eCD(remapped to 0x59A45c3Fe8124F94e86BFee5df9Ae6ea7a2bB3d6) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c40a002332cba174a42437d27877dc4cccbd9e8e32579987bfa8818519d7d0f4 --timeout 20 --value 50000000 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[valCausesOOF] Processing transaction number 942 from 0x0FaabbEc1CF7Bf8aE6369c53d56793aaf5421a85(remapped to 0xd159fCF2608c9291742CF3455e288CA6d08dcA31) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 915105c9939ed8fd2d61648396b20be121f1decb21ff79202d544137e60c11c4 --timeout 20 --value 50000001 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[valCausesOOF] Processing transaction number 943 from 0x0FaabbEc1CF7Bf8aE6369c53d56793aaf5421a85(remapped to 0xd159fCF2608c9291742CF3455e288CA6d08dcA31) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 915105c9939ed8fd2d61648396b20be121f1decb21ff79202d544137e60c11c4 --timeout 20 --value 50000001 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[valCausesOOF] Processing transaction number 944 from 0x1355D451e77E62FBE82194DF153f28754AbD5172(remapped to 0xF6A006432E015966af8ACE96805dA37C9bEf1D35) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 11cdaae3e27d78bfe7d3c2146f840768fc8e702b46e4f680b63fdbf730e926ce --timeout 20 --value 90000001 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[valCausesOOF] Processing transaction number 945 from 0x1355D451e77E62FBE82194DF153f28754AbD5172(remapped to 0xF6A006432E015966af8ACE96805dA37C9bEf1D35) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 11cdaae3e27d78bfe7d3c2146f840768fc8e702b46e4f680b63fdbf730e926ce --timeout 20 --value 90000000 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[valCausesOOF] Processing transaction number 946 from 0x673585130E6dAbA3ce6ED8E33541835f95a7a5d9(remapped to 0x1f17f9347EaC864eC3705aeDC8aAcf63C61469D5) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 0c15c2d970622fd6a0d405a23e006363e65f66bf70bebbbcb1cc5e94dd7f8495 --timeout 20 --value 10000001 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[valCausesOOF] Processing transaction number 947 from 0x673585130E6dAbA3ce6ED8E33541835f95a7a5d9(remapped to 0x1f17f9347EaC864eC3705aeDC8aAcf63C61469D5) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 0c15c2d970622fd6a0d405a23e006363e65f66bf70bebbbcb1cc5e94dd7f8495 --timeout 20 --value 10000000 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[valCausesOOF] Processing transaction number 948 from 0x1Fa60939bB376BF080e6C4F3e4544dAD8284331d(remapped to 0xE460d9628AA93e7d6f8d3584dCd9ac502efD273D) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e2bb8324e3560bc305ac97642080cda45ef33d881a92b462e38476ff8657f37a --timeout 20 --value 10000001 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[valCausesOOF] Processing transaction number 949 from 0x1Fa60939bB376BF080e6C4F3e4544dAD8284331d(remapped to 0xE460d9628AA93e7d6f8d3584dCd9ac502efD273D) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e2bb8324e3560bc305ac97642080cda45ef33d881a92b462e38476ff8657f37a --timeout 20 --value 10000000 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[valCausesOOF] Processing transaction number 950 from 0x40Fe9DDfC9aE9EB172F88a137432CC04C01CA5e5(remapped to 0xCb91E5b03c87bF7A37b6DC13DfeB46848c53C560) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 5c590c9f5a413b0ce9a7ccb23a3e59e226ca80939ff94d50511a98a5e644e1de --timeout 20 --value 10000 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[valCausesOOF] Processing transaction number 951 from 0xe498FbCc6667a818CbE096c503E64Bbd6207EA18(remapped to 0x750B815C2cAf148F3d2614AE0F64B4810eEf4DEe) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 2378392ac2114e90e4d1f16d83d828e74ec3f3fd00c8282cf7257132272eb690 --timeout 20 --value 10000 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[valCausesOOF] Processing transaction number 952 from 0xbC6C9ab197Ffd3CE7421DdcC0721959814b50826(remapped to 0x4466f4c74cB76CdB8C47F4880a5b31e8EB47184C) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key a9738deb4a1aa2a6c4800bbb653e94d5295577dfd47a88d3cb784e43535421ce --timeout 20 --value 300000000 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[valCausesOOF] Processing transaction number 953 from 0xbC6C9ab197Ffd3CE7421DdcC0721959814b50826(remapped to 0x4466f4c74cB76CdB8C47F4880a5b31e8EB47184C) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key a9738deb4a1aa2a6c4800bbb653e94d5295577dfd47a88d3cb784e43535421ce --timeout 20 --value 300000000 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[valCausesOOF] Processing transaction number 954 from 0xbC6C9ab197Ffd3CE7421DdcC0721959814b50826(remapped to 0x4466f4c74cB76CdB8C47F4880a5b31e8EB47184C) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key a9738deb4a1aa2a6c4800bbb653e94d5295577dfd47a88d3cb784e43535421ce --timeout 20 --value 300000000 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

