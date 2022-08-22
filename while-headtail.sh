count1=0
count2=0
while (( $count1<11 )) && (( $count2<11 ))
do
  x=$(( RANDOM%2 ))
  if [ $x -eq 1 ]
  then
      count1=$(( $count1 + 1 ))
      echo "head"
  else
      count2=$(( $count2 + 1 ))
      echo "tail"
  fi
done
echo "head count $count1"
echo "tail count $count2"
