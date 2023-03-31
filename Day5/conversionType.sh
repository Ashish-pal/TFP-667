echo "Enter the conversion type:"
echo "1. Feet to Inch"
echo "2. Feet to Meter"
echo "3. Inch to Feet"
echo "4. Meter to Feet"
read conversion_type

echo "Enter the length value:"
read length_value

case $conversion_type in
    1) converted_value=$(echo "scale=2; $length_value * 12" | bc)
       echo "$length_value feet = $converted_value inches"
       ;;
    2) converted_value=$(echo "scale=2; $length_value / 3.281" | bc)
       echo "$length_value feet = $converted_value meters"
       ;;
    3) converted_value=$(echo "scale=2; $length_value / 12" | bc)
       echo "$length_value inches = $converted_value feet"
       ;;
    4) converted_value=$(echo "scale=2; $length_value * 3.281" | bc)
       echo "$length_value meters = $converted_value feet"
       ;;
    *) echo "Invalid conversion type"
       ;;
esac