declare -A birthMonth=()
for(( i=1; i<=50; i++ ))
do
  month=$(( RANDOM%12 + 1 ));
  birthMonth+=([Name$i]=$month);
done
for(( j=1; j<=12; j++ ))
do
  count=0
  for key in ${!birthMonth[@]}
  do
    if [ ${birthMonth[$key]} -eq $j ]
    then
    count=$(( $count + 1 ))
    echo "$key : ${birthMonth[$key]}"
    fi
  done
 echo "total $count individuals have birthday in month $j"
done
