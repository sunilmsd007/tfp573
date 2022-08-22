low=0
high=100
mid=$(((( $low+$high ))/2))

input=0
        echo "THINK A NUMBER BETWEEN 0-100"
        echo "enter 0 if your number is less than asked number"
        echo "enter 2 if your number is greater than asked number"
        echo "enter 1 if this is your number"

while [[ $low -lt $high && $input -ne 1 ]]
do
        read -p "IS YOUR NUMBER $mid ? choose choice from above " input
        if [[ $input -eq 0 ]]
        then
                high=$mid
                mid=$(((( $low+$high ))/2 ))

        elif [[ $input -eq 2 ]]
        then
                low=$mid
                mid=$(((( $low+$high ))/2 ))
        fi
done
