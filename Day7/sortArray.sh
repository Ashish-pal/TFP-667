function generate_random_number {
  echo $((RANDOM % 900 + 100))
}

for ((i=0; i<10; i++)); do
  rand_num=$(generate_random_number)
  random_numbers[$i]=$rand_num
done

echo "Random numbers:"
echo "${random_numbers[@]}"

sorted_numbers=($(echo "${random_numbers[@]}" | tr ' ' '\n' | sort -n))

echo "Sorted numbers:"
echo "${sorted_numbers[@]}"

second_largest=${sorted_numbers[8]}
echo "Second largest number: $second_largest"

second_smallest=${sorted_numbers[1]}
echo "Second smallest number: $second_smallest"