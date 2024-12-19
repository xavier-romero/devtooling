# PRV_KEY for master sender 0xDb527cc618a8e06350a1B818d3cce1e24c699B0f
PRV_KEY=d783c347cab61fb9faa6a78ed1e0b405846b40620eaa14f164958ede428603f5
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test shanghaiExample (src/BlockchainTestsFiller/ValidBlocks/bcExample/shanghaiExampleFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[shanghaiExample] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xFa2D11DbC54442E73e9cf1c19F3Da59D216c7F85) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xFa2D11DbC54442E73e9cf1c19F3Da59D216c7F85 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[shanghaiExample] Processing transaction number 786 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xFa2D11DbC54442E73e9cf1c19F3Da59D216c7F85) to None"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key be0868c32a7b3af34f14e798acb139ba1a8ef9486bae8a98ca6a805be16cf37d --timeout 20 --value 0 --create 0x600160015500 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

