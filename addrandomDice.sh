#Add two Random Dice Number and Print the Result

x=$(( 1 + RANDOM%6 ))
y=$(( 1 + RANDOM%6 ))
z=$(( $x + $y ))
echo "x is $x and y is $y"
echo sum of both is $z
