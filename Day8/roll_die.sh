function roll_die {
  echo $(( RANDOM % 6 + 1 ))
}

declare -A roll_results=( [1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0 )

# Roll the die and store the results in the dictionary
while true; do
  result=$(roll_die)
  echo "Die rolled: $result"
  roll_results[$result]=$(( roll_results[$result] + 1 ))

  # Check if any number has reached 10 times
  max_count=0
  min_count=10
  for key in "${!roll_results[@]}"; do
    count=${roll_results[$key]}
    if [ $count -eq 10 ]; then
      echo "Number $key reached 10 times!"
      exit 0
    fi
    if [ $count -gt $max_count ]; then
      max_count=$count
      max_key=$key
    fi
    if [ $count -lt $min_count ]; then
      min_count=$count
      min_key=$key
    fi
  done

  echo "Current results:"
  for key in "${!roll_results[@]}"; do
    echo "$key: ${roll_results[$key]}"
  done
  echo ""
done

echo "Number $max_key reached maximum times: $max_count"
echo "Number $min_key reached minimum times: $min_count"