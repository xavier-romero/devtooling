# PRV_KEY for master sender 0xf837F029465726537d1C5442d07780719ce0578E
PRV_KEY=b39c73f7290b0e00ceb40861a630ce567a507ad3e8e6b737f169aa75791bb80c
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test AmIOnEIP150 (src/BlockchainTestsFiller/ValidBlocks/bcForkStressTest/AmIOnEIP150Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+10))
echo "[AmIOnEIP150] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd0307ae4a3361727C81Df2bf49946787F77647f6) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xd0307ae4a3361727C81Df2bf49946787F77647f6 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[AmIOnEIP150] Creating receiver 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b with code and balance 0..."
ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000025601260003963000000256000F36000600060006000600073c94f5374fce5edbc8e2a8697c15331677e6ebf0b620f4240f100 | jq -r .contractAddress)
echo $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B

echo "[AmIOnEIP150] Creating receiver 0xc94f5374fce5edbc8e2a8697c15331677e6ebf0b with code and balance 0..."
ADDR_C94F5374FCE5EDBC8E2A8697C15331677E6EBF0B=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000006601260003963000000066000F3600c60015500 | jq -r .contractAddress)
echo $ADDR_C94F5374FCE5EDBC8E2A8697C15331677E6EBF0B

echo "[AmIOnEIP150] Processing transaction number 713 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd0307ae4a3361727C81Df2bf49946787F77647f6) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f877240e5420c5c9b4f232681e794ee07ebabf99e837d73a8dd840f68aa3cb8b --timeout 20 --value 10 $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

