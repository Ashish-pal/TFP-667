num1=$((RANDOM % 900 + 100))
num2=$((RANDOM % 900 + 100))
num3=$((RANDOM % 900 + 100))
num4=$((RANDOM % 900 + 100))
num5=$((RANDOM % 900 + 100))

min=$num1
max=$num1

if [ $num2 -lt $min ]; then
  min=$num2
fi

if [ $num3 -lt $min ]; then
  min=$num3
fi

if [ $num4 -lt $min ]; then
  min=$num4
fi

if [ $num5 -lt $min ]; then
  min=$num5
fi

if [ $num2 -gt $max ]; then
  max=$num2
fi

if [ $num3 -gt $max ]; then
  max=$num3
fi

if [ $num4 -gt $max ]; then
  max=$num4
fi

if [ $num5 -gt $max ]; then
  max=$num5
fi

# output the results
echo "Minimum value: $min"
echo "Maximum value: $max"
