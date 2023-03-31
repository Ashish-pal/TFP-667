echo "Enter three numbers:"
read a b c

result1=$((a + b * c))
result2=$((a % b + c))
result3=$((c + a / b))
result4=$((a * b + c))

max=$result1
min=$result1

if [ $result2 -gt $max ]; then
  max=$result2
fi

if [ $result2 -lt $min ]; then
  min=$result2
fi

if [ $result3 -gt $max ]; then
  max=$result3
fi

if [ $result3 -lt $min ]; then
  min=$result3
fi

if [ $result4 -gt $max ]; then
  max=$result4
fi

if [ $result4 -lt $min ]; then
  min=$result4
fi

echo "Maximum result: $max"
echo "Minimum result: $min"