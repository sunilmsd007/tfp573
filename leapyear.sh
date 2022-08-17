read -p "enter the year" year
if [ $(( $year%4 )) -eq 0 ] || [ $(( $year%400 )) -eq 0 ] && [ $(( $year%100 )) -ne 0 ]
then
 echo "it is leap year"
else
 echo "it is not a leap year"
fi
