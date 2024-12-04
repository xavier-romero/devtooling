#!/bin/bash
#
# ./drain-wallet.sh "ghost fuel master kind winner ordinary fuel because idle bracket kidney daring" 4098 0xbA0000dF6d222487D03E962EAe30863F5228f39B https://rpc.internal.zkevm-rpc.com

mnemonic="$1"
mnemonic_index="$2"
to_addr="$3"
rpc_url="$4"


eth_address=$(cast wallet address --mnemonic "$mnemonic" --mnemonic-index $mnemonic_index)
balance=$(cast balance --rpc-url $rpc_url $eth_address)

min_balance_check=$(bc <<< "$balance < 10000000000") # 10gwei min
if [[ $min_balance_check -eq 1 ]]; then
    echo "not enough funds to bother" >&2
    exit
fi

gas_price="$(cast gas-price --rpc-url $rpc_url)"
gas_price=$((gas_price * 3 / 2)) # push the gas price up for faster mining

dist_value=$(bc <<< "($balance - (21000 * $gas_price))")
cast send --async --legacy --mnemonic "$mnemonic" --mnemonic-index "$mnemonic_index" --rpc-url "$rpc_url" --gas-price $gas_price --value $dist_value $to_addr

