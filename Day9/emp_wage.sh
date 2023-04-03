echo "Welcome to Employee Wage Computation Program"

WAGE_PER_HOUR=20
FULL_DAY_HOURS=8
PART_TIME_HOURS=4
WORKING_DAYS_PER_MONTH=20
MAX_WORKING_HOURS_PER_MONTH=100

total_working_hours=0
total_working_days=0
total_wage=0

# Function to calculate daily wage
calculate_wage() {
    local hours_worked=$1
    local wage=0
    case $hours_worked in
        $FULL_DAY_HOURS)
            wage=$(($WAGE_PER_HOUR * $FULL_DAY_HOURS))
            ;;
        $PART_TIME_HOURS)
            wage=$(($WAGE_PER_HOUR * $PART_TIME_HOURS))
            ;;
        *)
            echo "Error: Invalid number of hours worked"
            ;;
    esac
    echo $wage
}

# Loop until total working hours or days is reached
while [[ $total_working_hours -lt $MAX_WORKING_HOURS_PER_MONTH && $total_working_days -lt $WORKING_DAYS_PER_MONTH ]]
do
    # Check if employee is present or absent
    attendance=$((RANDOM % 2))
    case $attendance in
        0)
            echo "Employee is absent"
            ;;
        1)
            echo "Employee is present"
            # Calculate daily wage
            daily_wage=$(calculate_wage $FULL_DAY_HOURS)
            # Add to total wage and working hours
            total_wage=$(($total_wage + $daily_wage))
            total_working_hours=$(($total_working_hours + $FULL_DAY_HOURS))
            total_working_days=$(($total_working_days + 1))
            ;;
    esac
done

echo "Total working hours: $total_working_hours"
echo "Total working days: $total_working_days"
echo "Total wage: $total_wage"