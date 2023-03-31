read -p "Enter a number n: " n
sum=0

if [[ $n -eq 0 ]]; then
    echo "Error: n cannot be zero."
    exit 1
fi

for ((i=1; i<=n; i++)); do
    sum=$(echo "scale=2; $sum + 1/$i" | bc)
done

echo "The $n-th harmonic number is: $sum"