function is_palindrome {
  reverse_num=$(echo "$1" | rev)
  if [[ "$1" == "$reverse_num" ]]; then
    return 0 # Number is a palindrome
  else
    return 1 # Number is not a palindrome
  fi
}

echo "Enter the first number: "
read num1
echo "Enter the second number: "
read num2

if is_palindrome "$num1" && is_palindrome "$num2"; then
  echo "Both numbers are palindromes"
else
  echo "At least one number is not a palindrome"
fi