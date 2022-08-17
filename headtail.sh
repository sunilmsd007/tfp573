x=$(( RANDOM%2 ))
if [ $x -eq 1 ]
 then
  echo "it is heads"
else
  echo "it is tails"
fi
