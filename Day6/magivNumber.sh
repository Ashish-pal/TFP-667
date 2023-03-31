echo "Think of a number between 1 and 100."
echo "I will try to guess it. Tell me if my guess is less than or greater than your number."

min=1
max=100
magic_number=$((($min+$max)/2))
answer=""

while [[ $answer != "yes" ]]
do
    echo "Is your number $magic_number?"
    read answer
    
    if [[ $answer == "yes" ]]; then
        echo "Great! I guessed it right."
        break
    elif [[ $answer == "less" ]]; then
        max=$magic_number
    elif [[ $answer == "greater" ]]; then
        min=$magic_number
    else
        echo "Invalid input. Please enter 'yes', 'less' or 'greater'."
    fi
    
    magic_number=$((($min+$max)/2))
done