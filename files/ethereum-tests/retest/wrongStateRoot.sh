# PRV_KEY for master sender 0xaE416Ed004bf24a92034F5FD6ac97b4f92A08696
PRV_KEY=c1b5c68865add7c98d8d27cef9faa803efc4efbfde9b14de23b4b0ec4da7787b
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test wrongStateRoot (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/wrongStateRootFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[wrongStateRoot] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x738a12be638105eE5b1449b32750A7DAB45Fd982) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x738a12be638105eE5b1449b32750A7DAB45Fd982 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[wrongStateRoot] Processing transaction number 70 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x738a12be638105eE5b1449b32750A7DAB45Fd982) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 230e03ed5ee949e95fbd93be74c064fb487671159caa40d6b25d806ffe642cdf --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[wrongStateRoot] Processing transaction number 71 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x738a12be638105eE5b1449b32750A7DAB45Fd982) to 0x0000000000000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 230e03ed5ee949e95fbd93be74c064fb487671159caa40d6b25d806ffe642cdf --timeout 20 --value 10 0x0000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[wrongStateRoot] Processing transaction number 72 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x738a12be638105eE5b1449b32750A7DAB45Fd982) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 230e03ed5ee949e95fbd93be74c064fb487671159caa40d6b25d806ffe642cdf --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

