#Write a program that takes a command-line argument n and prints a table of the powers of 2 that are less than or equal to 2^n.

read -p "enter the number" n
for (( i=0; i<=n; i++ ))
do
  echo $(( 2**i ))
done
