# PRV_KEY for master sender 0xF980Dca1bCd874e113CF6bA9B18C7A5E0Dc65204
PRV_KEY=ed844339f1087702377954e9bd2386c425cd513848eced65ecb0c95b016f98b0
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test RecallSuicidedContractInOneBlock (src/BlockchainTestsFiller/ValidBlocks/bcValidBlockTest/RecallSuicidedContractInOneBlockFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+257))
echo "[RecallSuicidedContractInOneBlock] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xFf51a7258Aa9189115B4A97d837940C65463B3d5) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xFf51a7258Aa9189115B4A97d837940C65463B3d5 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[RecallSuicidedContractInOneBlock] Processing transaction number 703 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xFf51a7258Aa9189115B4A97d837940C65463B3d5) to None"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key a013360dfbb6f6e3f5156e87c4f15bb896223797be1edc4dc9f16b725497ba43 --timeout 20 --value 255 --create 0x604b80600c6000396000f3007c01000000000000000000000000000000000000000000000000000000006000350463cbf0b0c08114602d57005b60006004358073ffffffffffffffffffffffffffffffffffffffff16ff | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[RecallSuicidedContractInOneBlock] Processing transaction number 704 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xFf51a7258Aa9189115B4A97d837940C65463B3d5) to 0x6295ee1b4f6dd65047762f924ecd367c17eabf8f"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key a013360dfbb6f6e3f5156e87c4f15bb896223797be1edc4dc9f16b725497ba43 --timeout 20 --value 1 0x6295ee1b4f6dd65047762f924ecd367c17eabf8f 0xcbf0b0c00000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[RecallSuicidedContractInOneBlock] Processing transaction number 705 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xFf51a7258Aa9189115B4A97d837940C65463B3d5) to 0x6295ee1b4f6dd65047762f924ecd367c17eabf8f"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key a013360dfbb6f6e3f5156e87c4f15bb896223797be1edc4dc9f16b725497ba43 --timeout 20 --value 1 0x6295ee1b4f6dd65047762f924ecd367c17eabf8f 0xcbf0b0c00110000000000011000000000000011000000000000011000000000000000011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

