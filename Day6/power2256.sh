read -p "Enter a number: " n

power=1
i=1

while [ $i -le $n ] && [ $power -le 256 ]; do
    echo "2^$i = $power"
    ((i++))
    power=$((power * 2))
done