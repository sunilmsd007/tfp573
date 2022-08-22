#Write a program that computes a factorial of a number taken as input.

read -p "enter the number" num
fact=1
for (( i=1; i<=$num; i++ ))
do
  fact=$(( $fact*i ))
done
echo "$fact"
