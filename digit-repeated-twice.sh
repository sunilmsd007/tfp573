declare -a repeat=()
for(( i=0; i<=100; i++ ))
do

  rem=$(( $i%10 ))
  quo=$(( $i/10 ))
  if [ $rem -eq $quo ] && [ $i -ne 0 ]
  then
      repeat+=("$i")

  fi
done
echo ${repeat[*]}
