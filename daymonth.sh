#Write a program that takes day and month from the command line and prints true if day of month is between March 20 and June 20, false otherwise.

read -p "enter the day: " day
read -p "enter the month: " month
if [ $day -le 20 ] && [ $month -le 6 ] && [ $month -ge 3 ]
then
    echo "true"
else
    echo "false"
fi
