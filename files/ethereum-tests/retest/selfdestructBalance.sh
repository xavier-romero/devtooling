# PRV_KEY for master sender 0xf11F84336b2B73CDD4BDB4545907533D12768766
PRV_KEY=95693b1d49f9aa20aac0ea6f9c60a0a04bd4d79d094993d4ae27ae36984be248
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test selfdestructBalance (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/selfdestructBalanceFiller.yml)"

AMOUNT=$((2*150000*2*$GAS_PRICE+1))
echo "[selfdestructBalance] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xAB35d2Dc13eACbCB9f3aB1094991ebb1a841080B) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xAB35d2Dc13eACbCB9f3aB1094991ebb1a841080B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[selfdestructBalance] Creating receiver 0x000000000000000000000000000000000000dead with code and balance 10..."
ADDR_000000000000000000000000000000000000DEAD=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 10 --create 6300000004601260003963000000046000F3611000ff | jq -r .contractAddress)
echo $ADDR_000000000000000000000000000000000000DEAD

echo "[selfdestructBalance] Creating receiver 0xccccccccccccccccccccccccccccccccccccccc0 with code and balance 10..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC0=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 10 --create 6160a76000556160a76001556160a76002556160a76003556160a76004556160a76005556160a76006556160a76007556160a76008556160a76009556300000081604e60003963000000816000F361dead31600055600080600080600161dead5af18060015561dead316002556110003160035573ccccccccccccccccccccccccccccccccccccccc031600455600080600080600161dead5af190508060055561dead3160065573ccccccccccccccccccccccccccccccccccccccc03160075561dead3b6008556110003160095550 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC0

echo "[selfdestructBalance] Creating receiver 0xccccccccccccccccccccccccccccccccccccccc1 with code and balance 10..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC1=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 10 --create 6160a76000556160a76001556160a76002556160a76003556300000027602a60003963000000276000F361dead31600055600080600080600161dead5af18060015561dead3160025561dead3b60035550 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC1

echo "[selfdestructBalance] Processing transaction number 1580 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xAB35d2Dc13eACbCB9f3aB1094991ebb1a841080B) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 2500644837da4821a94134ed6a084452bb943b1f40cf613f751510f1b9cafbd8 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[selfdestructBalance] Processing transaction number 1581 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xAB35d2Dc13eACbCB9f3aB1094991ebb1a841080B) to 0xccccccccccccccccccccccccccccccccccccccc1"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 2500644837da4821a94134ed6a084452bb943b1f40cf613f751510f1b9cafbd8 --timeout 20 --value 1 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC1 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

