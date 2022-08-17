#Write a program that reads 5 Random 2 Digit values , then find their sum and the average

a=$((( RANDOM%90 ) + 10 ))
b=$((( RANDOM%90 ) + 10 ))
c=$((( RANDOM%90 ) + 10 ))
d=$((( RANDOM%90 ) + 10 ))
e=$((( RANDOM%90 ) + 10 ))
echo a=$a b=$b c=$c d=$d e=$e
x=$(( $a + $b + $c + $d + $e ))
echo "sum of these numbers is $x"
z=$(( $x/5 ))
echo "average of these numbers is $z"
