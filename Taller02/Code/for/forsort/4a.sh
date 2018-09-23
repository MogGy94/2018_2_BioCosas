i=1
weekdays=(Mon Tue Wed Thu Fri)

for day in "${weekdays[@]}"
do
echo "$day"
done | sort
