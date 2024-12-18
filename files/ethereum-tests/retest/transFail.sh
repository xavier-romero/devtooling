# PRV_KEY for master sender 0xc824BeE00f3b5F1D4Dc6890299ABaa498926bbEA
PRV_KEY=1de7e734d4b806ccbd80582650b9eb73ba33e831c23c8a2f434423a665afa855
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test transFail (src/BlockchainTestsFiller/InvalidBlocks/bcEIP1559/transFailFiller.yml)"

AMOUNT=$((2*150000*6*$GAS_PRICE+0))
echo "[transFail] Funding sender 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xCA445632e30E318855940823be8e304894Cd50BB) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xCA445632e30E318855940823be8e304894Cd50BB | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*6*$GAS_PRICE+0))
echo "[transFail] Funding sender 0xe2AFf99a29fADcd427b47b514b42ee5394913A01(remapped to 0x9c43F0572916B98aF9b88Fa14404E7b14FA51b3b) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x9c43F0572916B98aF9b88Fa14404E7b14FA51b3b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[transFail] Funding sender 0x6c5F5b28B10d021bf947e626Bf4565C8957162B4(remapped to 0x74cF64c7E46bfE74c30e752087E24C7428909f39) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x74cF64c7E46bfE74c30e752087E24C7428909f39 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[transFail] Funding sender 0x3D0fE89106005C4Dfe13b1DfdDFa6c012F0FbC45(remapped to 0xE9eC519BD707497aeCac5f456265eBC04E384328) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xE9eC519BD707497aeCac5f456265eBC04E384328 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[transFail] Funding sender 0x32BcEef44283dba687554010aCd79838aFAc8daf(remapped to 0x2e404a47655558038b65C66063be68a877917B11) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x2e404a47655558038b65C66063be68a877917B11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[transFail] Funding sender 0x387c92d4D20731FA792c392D81f717f246b59d3f(remapped to 0xb9CbE708849D34680493fA500562203032dE7176) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xb9CbE708849D34680493fA500562203032dE7176 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[transFail] Funding sender 0xD3e613c808af8C79d0eAc680c97a55252Ed612E4(remapped to 0x8a436f5F381882ac5136476bCec4C15807A10b07) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x8a436f5F381882ac5136476bCec4C15807A10b07 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccc with code and balance 1099511627776..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 6300000005601260003963000000056000F33a60043555 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

echo "[transFail] Processing transaction number 915 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xCA445632e30E318855940823be8e304894Cd50BB) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 8e889e0f74707e4fd53eba29143b829b4e85a32c86361ee87595628fa126d07d --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000101 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 916 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xCA445632e30E318855940823be8e304894Cd50BB) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 8e889e0f74707e4fd53eba29143b829b4e85a32c86361ee87595628fa126d07d --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000102 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 917 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xCA445632e30E318855940823be8e304894Cd50BB) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 8e889e0f74707e4fd53eba29143b829b4e85a32c86361ee87595628fa126d07d --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000103 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 918 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xCA445632e30E318855940823be8e304894Cd50BB) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 8e889e0f74707e4fd53eba29143b829b4e85a32c86361ee87595628fa126d07d --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000104 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 919 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xCA445632e30E318855940823be8e304894Cd50BB) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 8e889e0f74707e4fd53eba29143b829b4e85a32c86361ee87595628fa126d07d --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000105 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 920 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xCA445632e30E318855940823be8e304894Cd50BB) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 8e889e0f74707e4fd53eba29143b829b4e85a32c86361ee87595628fa126d07d --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000106 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 921 from 0xe2AFf99a29fADcd427b47b514b42ee5394913A01(remapped to 0x9c43F0572916B98aF9b88Fa14404E7b14FA51b3b) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ea51f22fcd24cd68c4e9c60e816718a6adaac304b51b89af489616122b2124ce --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000201 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 922 from 0xe2AFf99a29fADcd427b47b514b42ee5394913A01(remapped to 0x9c43F0572916B98aF9b88Fa14404E7b14FA51b3b) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ea51f22fcd24cd68c4e9c60e816718a6adaac304b51b89af489616122b2124ce --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000202 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 923 from 0xe2AFf99a29fADcd427b47b514b42ee5394913A01(remapped to 0x9c43F0572916B98aF9b88Fa14404E7b14FA51b3b) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ea51f22fcd24cd68c4e9c60e816718a6adaac304b51b89af489616122b2124ce --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000203 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 924 from 0xe2AFf99a29fADcd427b47b514b42ee5394913A01(remapped to 0x9c43F0572916B98aF9b88Fa14404E7b14FA51b3b) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ea51f22fcd24cd68c4e9c60e816718a6adaac304b51b89af489616122b2124ce --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000204 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 925 from 0xe2AFf99a29fADcd427b47b514b42ee5394913A01(remapped to 0x9c43F0572916B98aF9b88Fa14404E7b14FA51b3b) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ea51f22fcd24cd68c4e9c60e816718a6adaac304b51b89af489616122b2124ce --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000205 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 926 from 0xe2AFf99a29fADcd427b47b514b42ee5394913A01(remapped to 0x9c43F0572916B98aF9b88Fa14404E7b14FA51b3b) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ea51f22fcd24cd68c4e9c60e816718a6adaac304b51b89af489616122b2124ce --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000206 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 927 from 0x6c5F5b28B10d021bf947e626Bf4565C8957162B4(remapped to 0x74cF64c7E46bfE74c30e752087E24C7428909f39) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c9f8a156eb32ff13b1f258fcac17682fb83f58d4fc10b4b928b14cf169b1acf7 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000301 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 928 from 0x6c5F5b28B10d021bf947e626Bf4565C8957162B4(remapped to 0x74cF64c7E46bfE74c30e752087E24C7428909f39) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c9f8a156eb32ff13b1f258fcac17682fb83f58d4fc10b4b928b14cf169b1acf7 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000302 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 929 from 0x3D0fE89106005C4Dfe13b1DfdDFa6c012F0FbC45(remapped to 0xE9eC519BD707497aeCac5f456265eBC04E384328) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 3e4cb51382416ec3e2c2ec28728c63589c7b178477d99431abea1877e18d5e39 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000303 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 930 from 0x3D0fE89106005C4Dfe13b1DfdDFa6c012F0FbC45(remapped to 0xE9eC519BD707497aeCac5f456265eBC04E384328) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 3e4cb51382416ec3e2c2ec28728c63589c7b178477d99431abea1877e18d5e39 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000304 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 931 from 0x32BcEef44283dba687554010aCd79838aFAc8daf(remapped to 0x2e404a47655558038b65C66063be68a877917B11) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 3f776560b94e61f92305d1f8b4305361387d34c4301b9ae780cb96468e5a9bf0 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000305 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 932 from 0x387c92d4D20731FA792c392D81f717f246b59d3f(remapped to 0xb9CbE708849D34680493fA500562203032dE7176) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 91862287acf32851c58979817c8ed0ef3e5d3398bbd6923ddb50bc7bb3f65574 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000306 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 933 from 0x387c92d4D20731FA792c392D81f717f246b59d3f(remapped to 0xb9CbE708849D34680493fA500562203032dE7176) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 91862287acf32851c58979817c8ed0ef3e5d3398bbd6923ddb50bc7bb3f65574 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000307 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 934 from 0xD3e613c808af8C79d0eAc680c97a55252Ed612E4(remapped to 0x8a436f5F381882ac5136476bCec4C15807A10b07) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 27d116ab47abd2562c13bfd4add8bfae81aa8c8d1d7ff5f4d6afb6842a2c6e4a --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000308 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transFail] Processing transaction number 935 from 0xD3e613c808af8C79d0eAc680c97a55252Ed612E4(remapped to 0x8a436f5F381882ac5136476bCec4C15807A10b07) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 27d116ab47abd2562c13bfd4add8bfae81aa8c8d1d7ff5f4d6afb6842a2c6e4a --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000309 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

