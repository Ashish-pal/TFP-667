declare -a birth_months

for (( i=1; i<=50; i++ )); do
  year=$(( RANDOM % 2 + 1992 )) # Random year between 92 and 93
  month=$(( RANDOM % 12 + 1 )) # Random month between 1 and 12
  birth_month="$(date -d "$year-$month-01" +"%B")" # Convert year and month to month name
  birth_months+=("$birth_month") # Add birth month to array
done

# Loop through each month and find individuals with birthdays in that month
for month in {January,February,March,April,May,June,July,August,September,October,November,December}; do
  # Initialize an empty array to store names of individuals with birthdays in this month
  declare -a names

  # Loop through each birth month and check if it matches this month
  for (( i=0; i<${#birth_months[@]}; i++ )); do
    if [ "${birth_months[$i]}" = "$month" ]; then
      names+=("Person $(( i+1 ))")
    fi
  done

  # If there are individuals with birthdays in this month, print their names
  if [ ${#names[@]} -gt 0 ]; then
    echo "Individuals with birthdays in $month:"
    echo "${names[@]}"
    echo
  fi
done