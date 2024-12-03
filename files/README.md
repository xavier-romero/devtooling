# File generation
## polycli-retest.json
See: https://github.com/0xPolygon/polygon-cli/blob/main/cmd/retest/usage.md

## FuzzEVMRunner
Run from this ```files``` folder:

    git clone https://github.com/praetoriansentry/go-ethereum

    test_dir=go-ethereum/cmd/evm/testdata/fuzz/FuzzEVMRunner
    out_dir=FuzzEVMRunner
    mkdir $out_dir

    find $test_dir -type f | while read test_file ; do
        file_name=$(basename $test_file)
        cat $test_file | sed -n '4s/\[\]byte("\(.*\)")/\1/p' >> all-contracts.raw.bin
    done

    cat all-contracts.raw.bin | sed 's/[^0-9A-F]//gi' > all-contracts.clean.bin
    rm -fr all-contracts.raw.bin go-ethereum

    cat all-contracts.clean.bin | while read contract ; do
        file_name=$(echo -n $contract | sha256sum | awk '{print $1}')

        code_len=$(echo -n $contract | wc -c)
        code_len_mod=$((code_len % 2))
        if [[ code_len_mod -eq 1 ]]; then
            # There is no standard for this. This just matches what I did within the evm fuzzer
            code_len=$((code_len + 1))
            code_len=$((code_len / 2))
            contract="0$contract"
        fi
        code_len_padded=$(printf "%08x" $code_len)
        echo -n "63"$code_len_padded"630000001560003963"$code_len_padded"6000F3"$contract > $out_dir/$file_name.deploy.bin
    done

    rm -f all-contracts.clean.bin

