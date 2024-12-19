# PRV_KEY for master sender 0x52D917e6d0e18eAdCA3f859529E08F35Aca034aa
PRV_KEY=f3435b77a34de71602ff6f724e8d55851f9d240ec6e227b6c094dba4db90b710
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test accountInteractions (src/BlockchainTestsFiller/InvalidBlocks/bc4895-withdrawals/accountInteractionsFiller.json)"

AMOUNT=$((2*150000*9*$GAS_PRICE+115))
echo "[accountInteractions] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x481BE9b7AffA75CaABD9FCD347D3037f9f334768) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x481BE9b7AffA75CaABD9FCD347D3037f9f334768 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[accountInteractions] Creating receiver 0xc000000000000000000000000000000000000001 with code and balance 10..."
ADDR_C000000000000000000000000000000000000001=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 10 --create 6300000006601260003963000000066000F362010000ff00 | jq -r .contractAddress)
echo $ADDR_C000000000000000000000000000000000000001

echo "[accountInteractions] Creating receiver 0xd000000000000000000000000000000000000002 with code and balance 10..."
ADDR_D000000000000000000000000000000000000002=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 10 --create 630000001a6012600039630000001a6000F373c0000000000000000000000000000000000000023160005500 | jq -r .contractAddress)
echo $ADDR_D000000000000000000000000000000000000002

echo "[accountInteractions] Creating receiver 0xc000000000000000000000000000000000000003 with code and balance 10..."
ADDR_C000000000000000000000000000000000000003=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 10 --create 6300000029601260003963000000296000F360016000556000600060006000600b73d0000000000000000000000000000000000000036103e8f100 | jq -r .contractAddress)
echo $ADDR_C000000000000000000000000000000000000003

echo "[accountInteractions] Creating receiver 0xc000000000000000000000000000000000000004 with code and balance 10..."
ADDR_C000000000000000000000000000000000000004=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 10 --create 6300000006601260003963000000066000F362010001ff00 | jq -r .contractAddress)
echo $ADDR_C000000000000000000000000000000000000004

echo "[accountInteractions] Creating receiver 0xd000000000000000000000000000000000000005 with code and balance 1000..."
ADDR_D000000000000000000000000000000000000005=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000 --create 6300000049601260003963000000496000F36000600060006000600073c00000000000000000000000000000000000000561c350f15060006000600060006103e873c00000000000000000000000000000000000000561c350f100 | jq -r .contractAddress)
echo $ADDR_D000000000000000000000000000000000000005

echo "[accountInteractions] Creating receiver 0xc000000000000000000000000000000000000005 with code and balance 10..."
ADDR_C000000000000000000000000000000000000005=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 10 --create 6300000006601260003963000000066000F362010002ff00 | jq -r .contractAddress)
echo $ADDR_C000000000000000000000000000000000000005

echo "[accountInteractions] Creating receiver 0xd000000000000000000000000000000000000006 with code and balance 1000..."
ADDR_D000000000000000000000000000000000000006=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000 --create 630000001e6012600039630000001e6000F3600f80600f60003960006000f000fe6460006000556000526005601bf300 | jq -r .contractAddress)
echo $ADDR_D000000000000000000000000000000000000006

echo "[accountInteractions] Creating receiver 0xd000000000000000000000000000000000000007 with code and balance 1000..."
ADDR_D000000000000000000000000000000000000007=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000 --create 6300000011601260003963000000116000F36460006000fd6000526005601b6000f000 | jq -r .contractAddress)
echo $ADDR_D000000000000000000000000000000000000007

echo "[accountInteractions] Processing transaction number 158 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x481BE9b7AffA75CaABD9FCD347D3037f9f334768) to 0xc000000000000000000000000000000000000001"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 2e5f9b5e0c5df3b49acbcdcfdb9c33829ab3589677c65adacb57408c88e86958 --timeout 20 --value 0 $ADDR_C000000000000000000000000000000000000001 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[accountInteractions] Processing transaction number 159 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x481BE9b7AffA75CaABD9FCD347D3037f9f334768) to 0xc000000000000000000000000000000000000002"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 2e5f9b5e0c5df3b49acbcdcfdb9c33829ab3589677c65adacb57408c88e86958 --timeout 20 --value 15 0xc000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[accountInteractions] Processing transaction number 160 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x481BE9b7AffA75CaABD9FCD347D3037f9f334768) to 0xd000000000000000000000000000000000000002"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 2e5f9b5e0c5df3b49acbcdcfdb9c33829ab3589677c65adacb57408c88e86958 --timeout 20 --value 0 $ADDR_D000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[accountInteractions] Processing transaction number 161 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x481BE9b7AffA75CaABD9FCD347D3037f9f334768) to 0xc000000000000000000000000000000000000003"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 2e5f9b5e0c5df3b49acbcdcfdb9c33829ab3589677c65adacb57408c88e86958 --timeout 20 --value 0 $ADDR_C000000000000000000000000000000000000003 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[accountInteractions] Processing transaction number 162 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x481BE9b7AffA75CaABD9FCD347D3037f9f334768) to 0xc000000000000000000000000000000000000004"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 2e5f9b5e0c5df3b49acbcdcfdb9c33829ab3589677c65adacb57408c88e86958 --timeout 20 --value 0 $ADDR_C000000000000000000000000000000000000004 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[accountInteractions] Processing transaction number 163 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x481BE9b7AffA75CaABD9FCD347D3037f9f334768) to 0xc000000000000000000000000000000000000004"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 2e5f9b5e0c5df3b49acbcdcfdb9c33829ab3589677c65adacb57408c88e86958 --timeout 20 --value 100 $ADDR_C000000000000000000000000000000000000004 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[accountInteractions] Processing transaction number 164 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x481BE9b7AffA75CaABD9FCD347D3037f9f334768) to 0xd000000000000000000000000000000000000005"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 2e5f9b5e0c5df3b49acbcdcfdb9c33829ab3589677c65adacb57408c88e86958 --timeout 20 --value 0 $ADDR_D000000000000000000000000000000000000005 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[accountInteractions] Processing transaction number 165 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x481BE9b7AffA75CaABD9FCD347D3037f9f334768) to 0xd000000000000000000000000000000000000006"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 2e5f9b5e0c5df3b49acbcdcfdb9c33829ab3589677c65adacb57408c88e86958 --timeout 20 --value 0 $ADDR_D000000000000000000000000000000000000006 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[accountInteractions] Processing transaction number 166 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x481BE9b7AffA75CaABD9FCD347D3037f9f334768) to 0xd000000000000000000000000000000000000007"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 2e5f9b5e0c5df3b49acbcdcfdb9c33829ab3589677c65adacb57408c88e86958 --timeout 20 --value 0 $ADDR_D000000000000000000000000000000000000007 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

