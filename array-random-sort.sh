declare -a array=()
declare -a sorted=()
for(( i=0; i<10; i++ ))
do
  x=$(( $RANDOM%99 + 100 ))
  array+=("$x")
done
IFS=$'\n' sorted=($(sort <<<"${array[*]}"))
echo "unsorted array"
echo ${array[*]}
echo "sorted array"
echo ${sorted[*]}
echo "second largest element is ${sorted[8]}"
echo "second smallest element is ${sorted[1]}"

