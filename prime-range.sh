echo -e "Enter Number range : \c"
read n m
for((i=$n; i<=$m; i++))
do
 count=0
  for((j=2; j<=$i/2; j++))
  do
    ans=$(( $i%$j ))
    if [ $ans -eq 0 ]
    then
     count=$(($count+1))
     break
    fi
  done
if [ $count -eq 0 ]
then
  echo "$i"
fi
done
