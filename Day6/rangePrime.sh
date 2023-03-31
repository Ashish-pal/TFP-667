function is_prime {
    local num=$1

    if [[ $num -lt 2 ]]; then
        return 1
    fi

    for ((i=2; i<num; i++)); do
        if [[ $((num%i)) -eq 0 ]]; then
            return 1
        fi
    done

    return 0
}

# Check if all numbers in a range are prime
function check_range {
    local start=$1
    local end=$2

    for ((i=start; i<=end; i++)); do
        if is_prime $i; then
            echo $i
        fi
    done
}

read -p "Enter a number: " num

if is_prime $num; then
    echo "$num is a prime number."
else
    echo "$num is not a prime number."
fi

read -p "Enter a range of numbers (start end): " start end

echo "The prime numbers in the range $start-$end are:"
check_range $start $end