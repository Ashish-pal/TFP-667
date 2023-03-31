if [[ $# -ne 1 ]]; then
    echo "Usage: $0 <n>"
    exit 1
fi

n=$1

echo "Powers of 2 less than or equal to 2^$n:"
for ((i=0; i<=n; i++)); do
    result=$((2**i))
    if [[ $result -le $((2**n)) ]]; then
        echo "2^$i = $result"
    fi
done
