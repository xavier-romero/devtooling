# PRV_KEY for master sender 0x22F0EC000A1C36Fa4c4e14E7AC18fb1209B1EAfe
PRV_KEY=157e2e3b63ca67b25c3b5600cba697ab8c001a79db941be33ee26a0a3c0a0b76
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test transStorageBlockchain (src/BlockchainTestsFiller/ValidBlocks/bcEIP1153-transientStorage/transStorageBlockchainFiller.yml)"

AMOUNT=$((2*150000*24*$GAS_PRICE+0))
echo "[transStorageBlockchain] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x645E046186940a9262b0Fa51729c83B2404f41d1) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x645E046186940a9262b0Fa51729c83B2404f41d1 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Creating receiver 0xde570000de570000de570000de570000de570000 with code and balance 0..."
ADDR_DE570000DE570000DE570000DE570000DE570000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6160a76011556160a76013556160a76021556160a76023556160a76031556160a76033556160a76041556160a76043556160a76051556160a76053556160a76061556160a76063556300000097605a60003963000000976000F36015565b6000815c9050919050565b81815d5050565b60003560001a4360038214600183141715603a57603160006003565b60108202830155005b604561beef6000600e565b80600181146074576002811460765760038114607c576004811460825760058114608457600681146091576093565b005b60206000f35b60206000fd5bfe5b61beef63b160b160526093565b005b505050 | jq -r .contractAddress)
echo $ADDR_DE570000DE570000DE570000DE570000DE570000

echo "[transStorageBlockchain] Processing transaction number 1763 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x645E046186940a9262b0Fa51729c83B2404f41d1) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 78d7d80ee680127444f16bdda4743c5676dc484e7914faa354c43078e9ec4802 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x01 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1764 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x645E046186940a9262b0Fa51729c83B2404f41d1) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 78d7d80ee680127444f16bdda4743c5676dc484e7914faa354c43078e9ec4802 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x02 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1765 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x645E046186940a9262b0Fa51729c83B2404f41d1) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 78d7d80ee680127444f16bdda4743c5676dc484e7914faa354c43078e9ec4802 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x03 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1766 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x645E046186940a9262b0Fa51729c83B2404f41d1) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 78d7d80ee680127444f16bdda4743c5676dc484e7914faa354c43078e9ec4802 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x04 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1767 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x645E046186940a9262b0Fa51729c83B2404f41d1) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 78d7d80ee680127444f16bdda4743c5676dc484e7914faa354c43078e9ec4802 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x01 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1768 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x645E046186940a9262b0Fa51729c83B2404f41d1) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 78d7d80ee680127444f16bdda4743c5676dc484e7914faa354c43078e9ec4802 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x02 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1769 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x645E046186940a9262b0Fa51729c83B2404f41d1) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 78d7d80ee680127444f16bdda4743c5676dc484e7914faa354c43078e9ec4802 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x03 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1770 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x645E046186940a9262b0Fa51729c83B2404f41d1) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 78d7d80ee680127444f16bdda4743c5676dc484e7914faa354c43078e9ec4802 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x04 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1771 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x645E046186940a9262b0Fa51729c83B2404f41d1) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 78d7d80ee680127444f16bdda4743c5676dc484e7914faa354c43078e9ec4802 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x01 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1772 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x645E046186940a9262b0Fa51729c83B2404f41d1) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 78d7d80ee680127444f16bdda4743c5676dc484e7914faa354c43078e9ec4802 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x02 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1773 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x645E046186940a9262b0Fa51729c83B2404f41d1) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 78d7d80ee680127444f16bdda4743c5676dc484e7914faa354c43078e9ec4802 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x03 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1774 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x645E046186940a9262b0Fa51729c83B2404f41d1) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 78d7d80ee680127444f16bdda4743c5676dc484e7914faa354c43078e9ec4802 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x04 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1775 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x645E046186940a9262b0Fa51729c83B2404f41d1) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 78d7d80ee680127444f16bdda4743c5676dc484e7914faa354c43078e9ec4802 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x01 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1776 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x645E046186940a9262b0Fa51729c83B2404f41d1) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 78d7d80ee680127444f16bdda4743c5676dc484e7914faa354c43078e9ec4802 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x02 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1777 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x645E046186940a9262b0Fa51729c83B2404f41d1) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 78d7d80ee680127444f16bdda4743c5676dc484e7914faa354c43078e9ec4802 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x03 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1778 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x645E046186940a9262b0Fa51729c83B2404f41d1) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 78d7d80ee680127444f16bdda4743c5676dc484e7914faa354c43078e9ec4802 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x04 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1779 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x645E046186940a9262b0Fa51729c83B2404f41d1) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 78d7d80ee680127444f16bdda4743c5676dc484e7914faa354c43078e9ec4802 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x01 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1780 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x645E046186940a9262b0Fa51729c83B2404f41d1) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 78d7d80ee680127444f16bdda4743c5676dc484e7914faa354c43078e9ec4802 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x02 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1781 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x645E046186940a9262b0Fa51729c83B2404f41d1) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 78d7d80ee680127444f16bdda4743c5676dc484e7914faa354c43078e9ec4802 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x03 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1782 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x645E046186940a9262b0Fa51729c83B2404f41d1) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 78d7d80ee680127444f16bdda4743c5676dc484e7914faa354c43078e9ec4802 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x04 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1783 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x645E046186940a9262b0Fa51729c83B2404f41d1) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 78d7d80ee680127444f16bdda4743c5676dc484e7914faa354c43078e9ec4802 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x01 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1784 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x645E046186940a9262b0Fa51729c83B2404f41d1) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 78d7d80ee680127444f16bdda4743c5676dc484e7914faa354c43078e9ec4802 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x02 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1785 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x645E046186940a9262b0Fa51729c83B2404f41d1) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 78d7d80ee680127444f16bdda4743c5676dc484e7914faa354c43078e9ec4802 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x03 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1786 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x645E046186940a9262b0Fa51729c83B2404f41d1) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 78d7d80ee680127444f16bdda4743c5676dc484e7914faa354c43078e9ec4802 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x04 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

