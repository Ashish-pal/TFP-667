function check_two_identical_digits {
  num=$1
  digits=($(echo $num | grep -o .))

  for ((i=0; i<${#digits[@]}-1; i++)); do
    if [ ${digits[i]} -eq ${digits[i+1]} ]; then
      return 0
    fi
  done

  return 1
}

twice_digits=()
for ((i=0; i<=100; i++)); do
  if check_two_identical_digits $i; then
    twice_digits+=($i)
  fi
done

echo "Digits repeated twice: ${twice_digits[@]}"