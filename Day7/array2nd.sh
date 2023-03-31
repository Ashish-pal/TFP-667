function generate_random_number {
  echo $((RANDOM % 900 + 100))
}

for ((i=0; i<10; i++)); do
  rand_num=$(generate_random_number)
  random_numbers[$i]=$rand_num
done

echo "Random numbers:"
echo "${random_numbers[@]}"

# Find the second largest element in the array
largest=${random_numbers[0]}
second_largest=${random_numbers[0]}
for ((i=1; i<${#random_numbers[@]}; i++)); do
  if [[ ${random_numbers[i]} -gt $largest ]]; then
    second_largest=$largest
    largest=${random_numbers[i]}
  elif [[ ${random_numbers[i]} -gt $second_largest && ${random_numbers[i]} -ne $largest ]]; then
    second_largest=${random_numbers[i]}
  fi
done
echo "Second largest number: $second_largest"

# Find the second smallest element in the array
smallest=${random_numbers[0]}
second_smallest=${random_numbers[0]}
for ((i=1; i<${#random_numbers[@]}; i++)); do
  if [[ ${random_numbers[i]} -lt $smallest ]]; then
    second_smallest=$smallest
    smallest=${random_numbers[i]}
  elif [[ ${random_numbers[i]} -lt $second_smallest && ${random_numbers[i]} -ne $smallest ]]; then
    second_smallest=${random_numbers[i]}
  fi
done
echo "Second smallest number: $second_smallest"