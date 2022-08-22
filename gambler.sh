cash=100;
goal=200;
bets=0;
wins=0;
lose=0;
while (( cash > 0 && cash < $goal))
do
((bets++))
ran=$(( RANDOM % 2 + 1 ))
if [ $ran -eq 1 ]
then
        ((cash++))
        ((wins++))
else
        ((cash--))
        ((lose++))
fi
if [ $cash -eq 0 ]
then
        echo "Gambler lost  all money"

elif [ $cash -eq $goal ]
then
        echo "Gambler reach goal"
fi
done
echo "no of bets: $bets"
echo "no of Wins: $wins"
echo "No of loses: $lose"
echo "Cash=RS $cash"
