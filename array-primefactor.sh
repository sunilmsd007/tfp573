read -p "enter the number" n
declare -a primefactor=()
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
        primefactor+=("$i")
    fi
    fi
done
echo ${primefactor[*]}
