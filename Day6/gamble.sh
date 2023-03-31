balance=100
goal=200
bet=1
win_count=0
bet_count=0

while [[ $balance -gt 0 && $balance -lt $goal ]]
do
  
    read -p "Enter 'h' for high or 'l' for low: " guess

    random_number=$(( ( RANDOM % 10 ) + 1 ))

    if [[ $guess == "h" && $random_number -gt 5 ]] || [[ $guess == "l" && $random_number -le 5 ]]
    then

        balance=$((balance + bet))
        win_count=$((win_count + 1))
        echo "You won! Your balance is now $balance."
    else

        balance=$((balance - bet))
        bet_count=$((bet_count + 1))
        echo "You lost. Your balance is now $balance."
    fi
done

# Output the final results
if [[ $balance -ge $goal ]]
then
    echo "Congratulations! You reached your goal of $goal."
else
    echo "You are broke. Game over."
fi
echo "Number of bets made: $bet_count"
echo "Number of times won: $win_count"