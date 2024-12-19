# PRV_KEY for master sender 0x3e4AEcF13F89776099E576d62401Cf719ba759A3
PRV_KEY=7c8ec9b31dfab7c3d2cd5a8767ae3e6258469f91ab69db39225e72fdaa141039
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test DaoTransactions (src/BlockchainTestsFiller/TransitionTests/bcHomesteadToDao/DaoTransactionsFiller.json)"

AMOUNT=$((2*150000*29*$GAS_PRICE+128))
echo "[DaoTransactions] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD8Be1DEB02BBb2ec71869764e97bdfDd3bBABb91) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xD8Be1DEB02BBb2ec71869764e97bdfDd3bBABb91 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions] Creating receiver 0x1000000000000000000000000000000000000007 with code and balance 0..."
ADDR_1000000000000000000000000000000000000007=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000001a6012600039630000001a6000F373807640a13483f8ac783c557fcdf27be11ea4ac7a3160005500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000007

echo "[DaoTransactions] Creating receiver 0x1000000000000000000000000000000000000008 with code and balance 0..."
ADDR_1000000000000000000000000000000000000008=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000001a6012600039630000001a6000F373807640a13483f8ac783c557fcdf27be11ea4ac7a3160005500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000008

echo "[DaoTransactions] Processing transaction number 832 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD8Be1DEB02BBb2ec71869764e97bdfDd3bBABb91) to None"...
echo "[DaoTransactions] Processing transaction number 832 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD8Be1DEB02BBb2ec71869764e97bdfDd3bBABb91) to None"...
echo "[DaoTransactions] Processing transaction number 832 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD8Be1DEB02BBb2ec71869764e97bdfDd3bBABb91) to None"...
echo "[DaoTransactions] Processing transaction number 832 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD8Be1DEB02BBb2ec71869764e97bdfDd3bBABb91) to 0x1000000000000000000000000000000000000007"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ab09fd4a5a1029e8f81b9f172d0d74fce7a3023a1e25306371d006369c16a5a0 --timeout 20 --value 10 $ADDR_1000000000000000000000000000000000000007 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions] Processing transaction number 833 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD8Be1DEB02BBb2ec71869764e97bdfDd3bBABb91) to 0x1000000000000000000000000000000000000008"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ab09fd4a5a1029e8f81b9f172d0d74fce7a3023a1e25306371d006369c16a5a0 --timeout 20 --value 10 $ADDR_1000000000000000000000000000000000000008 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions] Processing transaction number 834 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD8Be1DEB02BBb2ec71869764e97bdfDd3bBABb91) to None"...
echo "[DaoTransactions] Processing transaction number 834 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD8Be1DEB02BBb2ec71869764e97bdfDd3bBABb91) to None"...
echo "[DaoTransactions] Processing transaction number 834 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD8Be1DEB02BBb2ec71869764e97bdfDd3bBABb91) to None"...
echo "[DaoTransactions] Processing transaction number 834 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD8Be1DEB02BBb2ec71869764e97bdfDd3bBABb91) to 0x1000000000000000000000000000000000000007"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ab09fd4a5a1029e8f81b9f172d0d74fce7a3023a1e25306371d006369c16a5a0 --timeout 20 --value 10 $ADDR_1000000000000000000000000000000000000007 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions] Processing transaction number 835 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD8Be1DEB02BBb2ec71869764e97bdfDd3bBABb91) to 0x1000000000000000000000000000000000000008"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ab09fd4a5a1029e8f81b9f172d0d74fce7a3023a1e25306371d006369c16a5a0 --timeout 20 --value 10 $ADDR_1000000000000000000000000000000000000008 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions] Processing transaction number 836 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD8Be1DEB02BBb2ec71869764e97bdfDd3bBABb91) to 0x1000000000000000000000000000000000000008"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ab09fd4a5a1029e8f81b9f172d0d74fce7a3023a1e25306371d006369c16a5a0 --timeout 20 --value 10 $ADDR_1000000000000000000000000000000000000008 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions] Processing transaction number 837 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD8Be1DEB02BBb2ec71869764e97bdfDd3bBABb91) to 0x1000000000000000000000000000000000000001"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ab09fd4a5a1029e8f81b9f172d0d74fce7a3023a1e25306371d006369c16a5a0 --timeout 20 --value 1 0x1000000000000000000000000000000000000001 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions] Processing transaction number 838 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD8Be1DEB02BBb2ec71869764e97bdfDd3bBABb91) to 0x1000000000000000000000000000000000000001"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ab09fd4a5a1029e8f81b9f172d0d74fce7a3023a1e25306371d006369c16a5a0 --timeout 20 --value 1 0x1000000000000000000000000000000000000001 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions] Processing transaction number 839 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD8Be1DEB02BBb2ec71869764e97bdfDd3bBABb91) to 0x1000000000000000000000000000000000000001"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ab09fd4a5a1029e8f81b9f172d0d74fce7a3023a1e25306371d006369c16a5a0 --timeout 20 --value 1 0x1000000000000000000000000000000000000001 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions] Processing transaction number 840 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD8Be1DEB02BBb2ec71869764e97bdfDd3bBABb91) to 0x1000000000000000000000000000000000000001"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ab09fd4a5a1029e8f81b9f172d0d74fce7a3023a1e25306371d006369c16a5a0 --timeout 20 --value 1 0x1000000000000000000000000000000000000001 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions] Processing transaction number 841 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD8Be1DEB02BBb2ec71869764e97bdfDd3bBABb91) to 0x1000000000000000000000000000000000000001"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ab09fd4a5a1029e8f81b9f172d0d74fce7a3023a1e25306371d006369c16a5a0 --timeout 20 --value 1 0x1000000000000000000000000000000000000001 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions] Processing transaction number 842 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD8Be1DEB02BBb2ec71869764e97bdfDd3bBABb91) to 0x1000000000000000000000000000000000000001"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ab09fd4a5a1029e8f81b9f172d0d74fce7a3023a1e25306371d006369c16a5a0 --timeout 20 --value 1 0x1000000000000000000000000000000000000001 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions] Processing transaction number 843 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD8Be1DEB02BBb2ec71869764e97bdfDd3bBABb91) to 0x1000000000000000000000000000000000000001"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ab09fd4a5a1029e8f81b9f172d0d74fce7a3023a1e25306371d006369c16a5a0 --timeout 20 --value 1 0x1000000000000000000000000000000000000001 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions] Processing transaction number 844 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD8Be1DEB02BBb2ec71869764e97bdfDd3bBABb91) to 0x1000000000000000000000000000000000000001"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ab09fd4a5a1029e8f81b9f172d0d74fce7a3023a1e25306371d006369c16a5a0 --timeout 20 --value 1 0x1000000000000000000000000000000000000001 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions] Processing transaction number 845 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD8Be1DEB02BBb2ec71869764e97bdfDd3bBABb91) to 0x1000000000000000000000000000000000000001"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ab09fd4a5a1029e8f81b9f172d0d74fce7a3023a1e25306371d006369c16a5a0 --timeout 20 --value 1 0x1000000000000000000000000000000000000001 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions] Processing transaction number 846 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD8Be1DEB02BBb2ec71869764e97bdfDd3bBABb91) to 0x1000000000000000000000000000000000000001"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ab09fd4a5a1029e8f81b9f172d0d74fce7a3023a1e25306371d006369c16a5a0 --timeout 20 --value 1 0x1000000000000000000000000000000000000001 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions] Processing transaction number 847 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD8Be1DEB02BBb2ec71869764e97bdfDd3bBABb91) to 0x1000000000000000000000000000000000000001"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ab09fd4a5a1029e8f81b9f172d0d74fce7a3023a1e25306371d006369c16a5a0 --timeout 20 --value 1 0x1000000000000000000000000000000000000001 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions] Processing transaction number 848 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD8Be1DEB02BBb2ec71869764e97bdfDd3bBABb91) to 0x1000000000000000000000000000000000000001"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ab09fd4a5a1029e8f81b9f172d0d74fce7a3023a1e25306371d006369c16a5a0 --timeout 20 --value 1 0x1000000000000000000000000000000000000001 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions] Processing transaction number 849 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD8Be1DEB02BBb2ec71869764e97bdfDd3bBABb91) to 0x1000000000000000000000000000000000000001"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ab09fd4a5a1029e8f81b9f172d0d74fce7a3023a1e25306371d006369c16a5a0 --timeout 20 --value 1 0x1000000000000000000000000000000000000001 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions] Processing transaction number 850 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD8Be1DEB02BBb2ec71869764e97bdfDd3bBABb91) to 0x1000000000000000000000000000000000000001"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ab09fd4a5a1029e8f81b9f172d0d74fce7a3023a1e25306371d006369c16a5a0 --timeout 20 --value 1 0x1000000000000000000000000000000000000001 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions] Processing transaction number 851 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD8Be1DEB02BBb2ec71869764e97bdfDd3bBABb91) to 0x1000000000000000000000000000000000000001"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ab09fd4a5a1029e8f81b9f172d0d74fce7a3023a1e25306371d006369c16a5a0 --timeout 20 --value 1 0x1000000000000000000000000000000000000001 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions] Processing transaction number 852 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD8Be1DEB02BBb2ec71869764e97bdfDd3bBABb91) to 0x1000000000000000000000000000000000000001"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ab09fd4a5a1029e8f81b9f172d0d74fce7a3023a1e25306371d006369c16a5a0 --timeout 20 --value 1 0x1000000000000000000000000000000000000001 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions] Processing transaction number 853 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD8Be1DEB02BBb2ec71869764e97bdfDd3bBABb91) to 0x1000000000000000000000000000000000000001"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ab09fd4a5a1029e8f81b9f172d0d74fce7a3023a1e25306371d006369c16a5a0 --timeout 20 --value 1 0x1000000000000000000000000000000000000001 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions] Processing transaction number 854 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD8Be1DEB02BBb2ec71869764e97bdfDd3bBABb91) to 0x1000000000000000000000000000000000000001"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ab09fd4a5a1029e8f81b9f172d0d74fce7a3023a1e25306371d006369c16a5a0 --timeout 20 --value 1 0x1000000000000000000000000000000000000001 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

