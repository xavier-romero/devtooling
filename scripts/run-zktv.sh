TESTS=$(ls /files/scripted/zktv/*.json)
for t in $TESTS; do
    echo "Running $t"
    scripted -f $t
done
