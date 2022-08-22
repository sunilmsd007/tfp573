read -p "enter the number" num
i=0
while (( i<=num ))
do
  x=$(( 2**i ))
  echo "$x"
  (( i++ ))
  if [ $x -eq 256 ]
  then
  exit
  fi
done
