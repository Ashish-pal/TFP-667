compute_expression() {
    local expression=$1
    local result=$(($expression))
    results["$expression"]=$result
}

# Initialize dictionary and array
declare -A results
declare -a sorted_results

# Get inputs from user
echo "Enter three numbers:"
read a
read b
read c

# Compute expressions and store in dictionary
compute_expression "$a + $b * $c"
compute_expression "$a * $b + $c"
compute_expression "$c + $a / $b"
compute_expression "$a % $b + $c"

# Copy dictionary values to array
for value in "${results[@]}"
do
    sorted_results+=($value)
done

# Sort array in descending order by keys
IFS=$'\n' sorted_results=($(sort -rn <<<"${sorted_results[*]}"))
unset IFS

# Print sorted results with keys
echo "Computation Result in Descending Order:"
for value in "${sorted_results[@]}"
do
    for key in "${!results[@]}"
    do
        if [[ ${results[$key]} == $value ]]
        then
            echo "$key = ${results[$key]}"
            unset results[$key]
            break
        fi
    done
done

# Sort array in ascending order by values
IFS=$'\n' sorted_results=($(sort -n <<<"${sorted_results[*]}"))
unset IFS

# Print sorted results with keys
echo "Computation Value in Ascending Order:"
for value in "${sorted_results[@]}"
do
    for key in "${!results[@]}"
    do
        if [[ ${results[$key]} == $value ]]
        then
            echo "$key = ${results[$key]}"
            unset results[$key]
            break
        fi
    done
done