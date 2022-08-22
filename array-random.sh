declare -a random=()
for(( i=1; i<=10; i++ ))
do
  x=$((( RANDOM%999 ) + 10 ))
  random+=("$x")
done
echo ${random[*]}
for(( i=0; i<=10; i++ ))
do
  temp=
  for(( j=$i+1; j<=10; j++ ))
  do
    if [ $((random[$i])) -lt $((random[$j])) ]
    then
        temp=${random[$i]}
        random[$i]=${random[$j]}
        random[$j]=$temp
    fi
  done
done
echo ${random[*]}
echo "second largest element is ${random[1]}"
echo "second smallest element is ${random[8]}"
