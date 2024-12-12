TESTS=$(ls /files/scripted/zktv/*.json)
for test in $TESTS; do
    # Get just the filename
    t=$(basename $test)
    # Get the name without the extension
    t=${t%.*}

    echo "Running $t ($test)"
    (scripted -f $test | tee /logs/zktv_$t.out) &
    sleep 5
done
