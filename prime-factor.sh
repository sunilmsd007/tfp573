read -p "enter the number" n
for(( i=1; i<=$n; i++ ))
do
  x=$(( $n%$i ))
  if [ $x -eq 0 ]
  then
    count=0
        for (( j=2; j<=$i/2; j++))
        do
        rem=$(($i%$j))
                if [ $rem -eq 0 ]
                then
                        count=$(($count+1))
                fi
        done
    if [ $count -eq 0 ]
    then
        echo "$i is Prime factor"
    fi
  fi
done
