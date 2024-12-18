# PRV_KEY for master sender 0x1124EC3d53eC68bdB87c0455c070E0937194146e
PRV_KEY=7f4c63eb6d5c59bc4a321d9da331e6c499be6f341270499d46ab81d3aad4a093
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test optionsTest (src/BlockchainTestsFiller/ValidBlocks/bcExample/optionsTestFiller.json)"

AMOUNT=$((2*150000*4*$GAS_PRICE+0))
echo "[optionsTest] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9D7a4AA0d7Da73cB559035186F9B876817c81491) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x9D7a4AA0d7Da73cB559035186F9B876817c81491 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[optionsTest] Creating receiver 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b with code and balance 100000000000000000..."
ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100000000000000000 --create 6300000007601260003963000000076000F360016000355500 | jq -r .contractAddress)
echo $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B

echo "[optionsTest] Processing transaction number 780 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9D7a4AA0d7Da73cB559035186F9B876817c81491) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 8e9207fd1b78e336f4d1da3806a592e676ea9a9f2490a14a3bf407bff0aa7d24 --timeout 20 --value 0 $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B 0x0000000000000000000000000000000000000000000000000000000000000001 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[optionsTest] Processing transaction number 781 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9D7a4AA0d7Da73cB559035186F9B876817c81491) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 8e9207fd1b78e336f4d1da3806a592e676ea9a9f2490a14a3bf407bff0aa7d24 --timeout 20 --value 0 $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B 0x0000000000000000000000000000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[optionsTest] Processing transaction number 782 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9D7a4AA0d7Da73cB559035186F9B876817c81491) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 8e9207fd1b78e336f4d1da3806a592e676ea9a9f2490a14a3bf407bff0aa7d24 --timeout 20 --value 0 $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B 0x0000000000000000000000000000000000000000000000000000000000000003 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[optionsTest] Processing transaction number 783 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9D7a4AA0d7Da73cB559035186F9B876817c81491) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 8e9207fd1b78e336f4d1da3806a592e676ea9a9f2490a14a3bf407bff0aa7d24 --timeout 20 --value 0 $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B 0x0000000000000000000000000000000000000000000000000000000000000005 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

