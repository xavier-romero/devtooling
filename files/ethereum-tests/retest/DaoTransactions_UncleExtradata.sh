# PRV_KEY for master sender 0xDA67b54573FB9aC5758Bd6091303ebFB883d7074
PRV_KEY=fca6eacbff85239998403400379a362c9108c678410806aae62a45c48ef44bcb
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test DaoTransactions_UncleExtradata (src/BlockchainTestsFiller/TransitionTests/bcHomesteadToDao/DaoTransactions_UncleExtradataFiller.json)"

AMOUNT=$((2*150000*20*$GAS_PRICE+1273))
echo "[DaoTransactions_UncleExtradata] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE7eE4945BD8Ff5654B6D560D184401950D2d5eaF) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xE7eE4945BD8Ff5654B6D560D184401950D2d5eaF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_UncleExtradata] Creating receiver 0x1000000000000000000000000000000000000007 with code and balance 0..."
ADDR_1000000000000000000000000000000000000007=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000001a6012600039630000001a6000F373807640a13483f8ac783c557fcdf27be11ea4ac7a3160005500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000007

echo "[DaoTransactions_UncleExtradata] Creating receiver 0x1000000000000000000000000000000000000008 with code and balance 0..."
ADDR_1000000000000000000000000000000000000008=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000001a6012600039630000001a6000F373807640a13483f8ac783c557fcdf27be11ea4ac7a3160005500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000008

echo "[DaoTransactions_UncleExtradata] Processing transaction number 817 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE7eE4945BD8Ff5654B6D560D184401950D2d5eaF) to None"...
echo "[DaoTransactions_UncleExtradata] Processing transaction number 817 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE7eE4945BD8Ff5654B6D560D184401950D2d5eaF) to None"...
echo "[DaoTransactions_UncleExtradata] Processing transaction number 817 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE7eE4945BD8Ff5654B6D560D184401950D2d5eaF) to None"...
echo "[DaoTransactions_UncleExtradata] Processing transaction number 817 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE7eE4945BD8Ff5654B6D560D184401950D2d5eaF) to 0x1000000000000000000000000000000000000007"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 40b987b1d3bf3675103c912708a9f856ba3d1278ec31a3d78819501320f84ccc --timeout 20 --value 10 $ADDR_1000000000000000000000000000000000000007 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_UncleExtradata] Processing transaction number 818 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE7eE4945BD8Ff5654B6D560D184401950D2d5eaF) to 0x1000000000000000000000000000000000000008"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 40b987b1d3bf3675103c912708a9f856ba3d1278ec31a3d78819501320f84ccc --timeout 20 --value 10 $ADDR_1000000000000000000000000000000000000008 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_UncleExtradata] Processing transaction number 819 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE7eE4945BD8Ff5654B6D560D184401950D2d5eaF) to 0x1000000000000000000000000000000000000008"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 40b987b1d3bf3675103c912708a9f856ba3d1278ec31a3d78819501320f84ccc --timeout 20 --value 10 $ADDR_1000000000000000000000000000000000000008 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_UncleExtradata] Processing transaction number 820 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE7eE4945BD8Ff5654B6D560D184401950D2d5eaF) to 0x1000000000000000000000000000000000000008"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 40b987b1d3bf3675103c912708a9f856ba3d1278ec31a3d78819501320f84ccc --timeout 20 --value 10 $ADDR_1000000000000000000000000000000000000008 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_UncleExtradata] Processing transaction number 821 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE7eE4945BD8Ff5654B6D560D184401950D2d5eaF) to None"...
echo "[DaoTransactions_UncleExtradata] Processing transaction number 821 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE7eE4945BD8Ff5654B6D560D184401950D2d5eaF) to 0x1000000000000000000000000000000000000010"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 40b987b1d3bf3675103c912708a9f856ba3d1278ec31a3d78819501320f84ccc --timeout 20 --value 111 0x1000000000000000000000000000000000000010 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_UncleExtradata] Processing transaction number 822 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE7eE4945BD8Ff5654B6D560D184401950D2d5eaF) to None"...
echo "[DaoTransactions_UncleExtradata] Processing transaction number 822 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE7eE4945BD8Ff5654B6D560D184401950D2d5eaF) to 0x1000000000000000000000000000000000000011"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 40b987b1d3bf3675103c912708a9f856ba3d1278ec31a3d78819501320f84ccc --timeout 20 --value 10 0x1000000000000000000000000000000000000011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_UncleExtradata] Processing transaction number 823 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE7eE4945BD8Ff5654B6D560D184401950D2d5eaF) to 0x1000000000000000000000000000000000000012"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 40b987b1d3bf3675103c912708a9f856ba3d1278ec31a3d78819501320f84ccc --timeout 20 --value 10 0x1000000000000000000000000000000000000012 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_UncleExtradata] Processing transaction number 824 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE7eE4945BD8Ff5654B6D560D184401950D2d5eaF) to 0x1000000000000000000000000000000000000013"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 40b987b1d3bf3675103c912708a9f856ba3d1278ec31a3d78819501320f84ccc --timeout 20 --value 10 0x1000000000000000000000000000000000000013 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_UncleExtradata] Processing transaction number 825 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE7eE4945BD8Ff5654B6D560D184401950D2d5eaF) to 0x1000000000000000000000000000000000000014"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 40b987b1d3bf3675103c912708a9f856ba3d1278ec31a3d78819501320f84ccc --timeout 20 --value 10 0x1000000000000000000000000000000000000014 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_UncleExtradata] Processing transaction number 826 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE7eE4945BD8Ff5654B6D560D184401950D2d5eaF) to 0x1000000000000000000000000000000000000015"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 40b987b1d3bf3675103c912708a9f856ba3d1278ec31a3d78819501320f84ccc --timeout 20 --value 10 0x1000000000000000000000000000000000000015 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_UncleExtradata] Processing transaction number 827 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE7eE4945BD8Ff5654B6D560D184401950D2d5eaF) to 0x1000000000000000000000000000000000000016"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 40b987b1d3bf3675103c912708a9f856ba3d1278ec31a3d78819501320f84ccc --timeout 20 --value 10 0x1000000000000000000000000000000000000016 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_UncleExtradata] Processing transaction number 828 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE7eE4945BD8Ff5654B6D560D184401950D2d5eaF) to 0x1000000000000000000000000000000000000017"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 40b987b1d3bf3675103c912708a9f856ba3d1278ec31a3d78819501320f84ccc --timeout 20 --value 10 0x1000000000000000000000000000000000000017 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_UncleExtradata] Processing transaction number 829 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE7eE4945BD8Ff5654B6D560D184401950D2d5eaF) to 0x1000000000000000000000000000000000000018"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 40b987b1d3bf3675103c912708a9f856ba3d1278ec31a3d78819501320f84ccc --timeout 20 --value 10 0x1000000000000000000000000000000000000018 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_UncleExtradata] Processing transaction number 830 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE7eE4945BD8Ff5654B6D560D184401950D2d5eaF) to 0x1000000000000000000000000000000000000019"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 40b987b1d3bf3675103c912708a9f856ba3d1278ec31a3d78819501320f84ccc --timeout 20 --value 10 0x1000000000000000000000000000000000000019 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_UncleExtradata] Processing transaction number 831 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE7eE4945BD8Ff5654B6D560D184401950D2d5eaF) to 0x1000000000000000000000000000000000000020"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 40b987b1d3bf3675103c912708a9f856ba3d1278ec31a3d78819501320f84ccc --timeout 20 --value 1000 0x1000000000000000000000000000000000000020 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

