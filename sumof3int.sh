declare -a add=(2 1 2 -4 -3)

for(( i=0; i<=5; i++ ))
do
  for(( j=$i+1; j<=5; j++ ))
  do
    for(( k=$j+1; k<=5; k++ ))
    do
      if [ $(( add[$i] + add[$j] + add[$k] )) -eq 0 ]
      then
          echo "[ ${add[$i]} ${add[$j]} ${add[$k]} ]"
      fi
    done
  done
done
