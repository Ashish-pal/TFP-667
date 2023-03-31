day=$1
month=$2

if [ $month -eq 3 -a $day -ge 20 -o $month -gt 3 -a $month -lt 6 -o $month -eq 6 -a $day -le 20 ]; then
  echo "true"
else
  echo "false"
fi