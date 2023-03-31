read -p "Enter a number: " num

prime_factors=()
for ((i=2; i<=num; i++)); do
    while [ $((num % i)) -eq 0 ]; do
        prime_factors+=($i)
        num=$((num / i))
    done
done

factors=()
factors+=(${prime_factors[0]})
for ((i=1; i<${#prime_factors[@]}; i++)); do
    len=${#factors[@]}
    for ((j=0; j<len; j++)); do
        factors+=($((prime_factors[i] * factors[j])))
    done
    factors+=(${prime_factors[i]})
done

IFS=$'\n' sorted=($(sort -n <<<"${factors[*]}"))
echo "Factors of $num: ${sorted[*]}"