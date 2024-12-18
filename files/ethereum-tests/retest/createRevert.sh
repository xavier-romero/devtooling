# PRV_KEY for master sender 0xEf3AFA9E4D7Dd79F07cdb443d523f400B74FD1D3
PRV_KEY=099dfa5c4fb110b1731b0afaa69b06355ce8984dc058321d3191e2a61340ff2b
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test createRevert (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/createRevertFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+10))
echo "[createRevert] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x3c800f5a0Bd61CAff81C68871f92adff981d3398) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x3c800f5a0Bd61CAff81C68871f92adff981d3398 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[createRevert] Processing transaction number 124 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x3c800f5a0Bd61CAff81C68871f92adff981d3398) to None"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key af8128cb92134bf45fb9a175a18b49777b56cd236abce7e07a2d8921b0aaace0 --timeout 20 --value 10 --create 0x60006000fd | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

