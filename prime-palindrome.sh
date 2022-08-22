
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
}

function prime() {
for((i=2; i<=$n/2; i++))
do
  ans=$(( n%i ))
  if [ $ans -eq 0 ]
  then
    echo "$n is not a prime number."
  exit 0
  fi
done
echo "$n is prime number"
palindrome
}

read -p "enter the number" n
prime $n
n=$rev
prime $n
