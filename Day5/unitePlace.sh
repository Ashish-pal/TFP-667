echo "Enter a number:"
read num

unit=$(echo $num | cut -c1)

ten=$(echo $num | cut -c2)

hundred=$(echo $num | cut -c3)

thousand=$(echo $num | cut -c4)

echo "Units place: $unit"
echo "Tens place: $ten"
echo "Hundreds place: $hundred"
echo "Thousands place: $thousand"