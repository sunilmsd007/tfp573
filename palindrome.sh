function palindrome() {
rem=0
rev=0
number=$n
while [ $n -gt 0 ]
do
rem=$(( $n%10 ))
rev=$(( $rem + ( $rev*10 )))
n=$(( $n/10 ))
done
echo $rev
if [ $rev -eq $number ]
then
    echo "entered number is palindrome"
else
    echo "entered number is not a palindrome"
fi
}

read -p "enter the number" n
palindrome
