function is_prime {
  if [[ "$1" -lt 2 ]]; then
    return 1 
  fi
  for ((i=2; i<"$1"; i++)); do
    if [[ "$(($1 % $i))" -eq 0 ]]; then
      return 1 
    fi
  done
  return 0 
}


function get_palindrome {
  reverse_num=$(echo "$1" | rev)
  echo "$reverse_num"
}


echo "Enter a number: "
read num

if is_prime "$num"; then
  echo "$num is a prime number"
else
  echo "$num is not a prime number"
fi

palindrome_num=$(get_palindrome "$num")
echo "The palindrome of $num is $palindrome_num"

if is_prime "$palindrome_num"; then
  echo "$palindrome_num is also a prime number"
else
  echo "$palindrome_num is not a prime number"
fi