#!/bin/bash
# On any given chain, I'd like to have a consistent way to fund test accounts and pre-deploy some smart contracts

# Standard Kurtosis L2
rpc_url="$(kurtosis port print cdk cdk-erigon-sequencer-001 rpc)"
private_key="0x12d7de8621a77640c9241b2595ba78ce443d05e94090365ab3bb5e19df82c625"

# Standard Kurtosis L1
# rpc_url="$(kurtosis port print cdk el-1-geth-lighthouse rpc)"
# private_key="0x42b6e34dc21598a807dc19d7784c71b2a7a01f6480dc6f58258f78e539f1a1fa"

# Bali
# rpc_url="https://rpc.internal.zkevm-rpc.com"
# private_key="0x2f6b637f0187825a7a2c82eda968e79e5ea0de889c52b881ab219f81e6937b27"

# Cardona
# rpc_url="https://rpc.cardona.zkevm-rpc.com"
# private_key="0x8e79ccad0be228fa579beb87283ac34c96392ac5cff003f19112f4f48cff9083"

# Ansible values
# rpc_url="http://127.0.0.1:34466"
# private_key="0xbcdf20249abf0ed6d944c0288fad489e33f66b3960d9e6229c1cd214ed3bbe31"

# Tunneled Setup
# rpc_url="http://127.0.0.1:42782"
# private_key="0x12d7de8621a77640c9241b2595ba78ce443d05e94090365ab3bb5e19df82c625"


eth_address=$(cast wallet address --private-key $private_key)
cast balance --ether --rpc-url $rpc_url $eth_address

fund_amount="1000ether"
test_mnemonic="math mixture girl hood this crouch abuse record wet grocery awful skill"

for i in {0..9}; do
    cur_addr=$(cast wallet address --mnemonic "$test_mnemonic" --mnemonic-index "$i")
    cur_bal=$(cast balance --ether --rpc-url $rpc_url $cur_addr)
    has_balance=$(bc <<< "$cur_bal > 0.5")
    if [[ $has_balance -eq 0 ]]; then
        cast send --legacy --rpc-url "$rpc_url" --private-key "$private_key" --value "$fund_amount" "$cur_addr" > /dev/null
        echo "Funded $fund_amount to $cur_addr"
    else
        echo "$cur_addr is already funded with $cur_bal"
    fi
done


deployment_proxy=$(cast code --rpc-url $rpc_url 0x4e59b44847b379578588920ca78fbf26c0b4956c)

if [[ $deployment_proxy == "0x" ]]; then
    cast send --legacy --value 0.1ether --rpc-url $rpc_url --private-key $private_key 0x3fab184622dc19b6109349b94811493bf2a45362 > /dev/null
    cast publish --rpc-url $rpc_url 0xf8a58085174876e800830186a08080b853604580600e600039806000f350fe7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe03601600081602082378035828234f58015156039578182fd5b8082525050506014600cf31ba02222222222222222222222222222222222222222222222222222222222222222a02222222222222222222222222222222222222222222222222222222222222222 > /dev/null

    echo "The deterministic deployment proxy should be deployed now"
    cast code --rpc-url $rpc_url 0x4e59b44847b379578588920ca78fbf26c0b4956c
fi

salt=0x0000000000000000000000000000000000000000000000000000000000000000
cast send --legacy --rpc-url $rpc_url --private-key $private_key 0x4e59b44847b379578588920ca78fbf26c0b4956c $salt$(cat ../../evm-testing/out/address-tester.deploy.bin) &> /dev/null
tester_addr=$(cast create2 --salt $salt --init-code $(cat ../../evm-testing/out/address-tester.deploy.bin))
deployed_code=$(cast code --rpc-url $rpc_url $tester_addr)
if [[ $deployed_code == "0x" ]]; then
    echo "No code at expected address"
    exit 1;
fi
echo "The tester contract should be deployed: $tester_addr"


salt=0x0000000000000000000000000000000000000000000000000000000000000000
cast send --legacy --rpc-url $rpc_url --private-key $private_key 0x4e59b44847b379578588920ca78fbf26c0b4956c $salt$(cat ../../evm-testing/out/zkevm-counters.deploy.bin) &> /dev/null
counters_addr=$(cast create2 --salt $salt --init-code $(cat ../../evm-testing/out/zkevm-counters.deploy.bin))
deployed_code=$(cast code --rpc-url $rpc_url $counters_addr)
if [[ $deployed_code == "0x" ]]; then
    echo "No code at expected address"
    exit 1;
fi
echo "The counters contract should be deployed: $counters_addr"


# TEMPORARY fund the claim tx manager
cast send --legacy --rpc-url "$rpc_url" --private-key "$private_key" --value "$fund_amount" "0x5f5dB0D4D58310F53713eF4Df80ba6717868A9f8" > /dev/null
# TEMPORARY fund the claim sponsor
cast send --legacy --rpc-url "$rpc_url" --private-key "$private_key" --value "$fund_amount" "0xfa291C5f54E4669aF59c6cE1447Dc0b3371EF046" > /dev/null

polycli wallet inspect --mnemonic "$test_mnemonic" | jq '[.Addresses[] | del(.HexPublicKey) | del(.HexFullPublicKey) | del(.BTCAddress) | del(.WIF)]'
