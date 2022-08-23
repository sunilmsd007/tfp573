declare -A dice=()
count1=0
count2=0
count3=0
count4=0
count5=0
count6=0
i=0
while(( $count1 < 10 && $count2 < 10 && $count3 < 10 && $count4 < 10 && $count5 < 10 && $count6 < 10  ))
do
 x=$(( RANDOM%6 + 1 ))
 dice+=([$i]="$x")
 if [ $x -eq 1 ]
 then
     count1=$(($count1 + 1))
 elif [ $x -eq 2 ]
 then
     count2=$(($count2 + 1))
  elif [ $x -eq 3 ]
 then
     count3=$(($count3 + 1))
  elif [ $x -eq 4 ]
 then
     count4=$(($count4 + 1))
  elif [ $x -eq 5 ]
 then
     count5=$(($count5 + 1))
  elif [ $x -eq 6 ]
 then
     count6=$(($count6 + 1))
 fi
 i=$i+1

done
echo ${dice[*]}
echo "1 repeated $count1 times"
echo "2 repeated $count2 times"
echo "3 repeated $count3 times"
echo "4 repeated $count4 times"
echo "5 repeated $count5 times"
echo "6 repeated $count6 times"

declare -A count=([1]=$count1 [2]=$count2 [3]=$count3 [4]=$count4 [5]=$count5 [6]=$count6)

min=$((${count[1]}))
for((i=2; i<=6; i++ ))
do
  if [ $(( ${count[$i]} )) -le $min ]
  then
      min=${count[$i]}
  fi
done
minimum=$min
for number in ${!count[*]}
do
  if(( count[$number] == 10 ))
  then
      echo "maximum repeated number is $number"
  elif(( count[$number] == $minimum ))
  then
     echo "minimum repeated number is $number"

fi
done
