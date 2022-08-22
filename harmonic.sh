read -p "Enter the number: " n;
sum=0;
printf "H($n):"
for (( i=1; i<=$n; i++ ))
do
        printf "1/$i";
        if [ $i -lt $n ]
        then
                printf " + ";
        fi
        sum=`echo $sum $i | awk '{ print $1+1/$2 } '`
done
echo ' '
echo "H($n)=$sum"
