function check_sum_zero {
  numbers=("$@")
  n=${#numbers[@]}

  for ((i=0; i<$n-2; i++)); do
    for ((j=i+1; j<$n-1; j++)); do
      for ((k=j+1; k<$n; k++)); do
        if [ $(( ${numbers[i]} + ${numbers[j]} + ${numbers[k]} )) -eq 0 ]; then
          echo "${numbers[i]} + ${numbers[j]} + ${numbers[k]} = 0"
        fi
      done
    done
  done
}

numbers=(2 3 1 -5 -1 8 -6 9 7 -2)

check_sum_zero "${numbers[@]}"