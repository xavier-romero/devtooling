# PRV_KEY for master sender 0x52cfEd20E5b7FF3ca0f9EFd6779048b28F1473C4
PRV_KEY=29f926b0c2d670cfe48936cd9886dee5f6088242779bdbad044fbc2c5de64a72
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test wrongStateRoot (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/wrongStateRootFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[wrongStateRoot] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x64e1A11b175d2DAA0a99Df18048C2735e367c967) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x64e1A11b175d2DAA0a99Df18048C2735e367c967 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[wrongStateRoot] Processing transaction number 70 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x64e1A11b175d2DAA0a99Df18048C2735e367c967) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 5f063e10f68a7b99b09eaf5558132ecb53d0411f34931d4b5a4d4ae5b3ab6950 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[wrongStateRoot] Processing transaction number 71 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x64e1A11b175d2DAA0a99Df18048C2735e367c967) to 0x0000000000000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 5f063e10f68a7b99b09eaf5558132ecb53d0411f34931d4b5a4d4ae5b3ab6950 --timeout 20 --value 10 0x0000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[wrongStateRoot] Processing transaction number 72 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x64e1A11b175d2DAA0a99Df18048C2735e367c967) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 5f063e10f68a7b99b09eaf5558132ecb53d0411f34931d4b5a4d4ae5b3ab6950 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

