a=$(( RANDOM%900 + 100 ))
b=$(( RANDOM%900 + 100 ))
c=$(( RANDOM%900 + 100 ))
d=$(( RANDOM%900 + 100 ))
e=$(( RANDOM%900 + 100 ))
echo $a
echo $b
echo $c
echo $d
echo $e
max=$a
min=$a
if [ $a -gt $b ] && [ $a -gt $c ] && [ $a -gt $d ] && [ $a -gt $e ]
then
    max=$a
elif [ $b -gt $a ] && [ $b -gt $c ] && [ $b -gt $d ] && [ $b -gt $e ]
then
    max=$b
elif [ $c -gt $a ] && [ $c -gt $b ] && [ $c -gt $d ] && [ $c -gt $e ]
then
    max=$c
elif [ $d -gt $a ] && [ $d -gt $b ] && [ $d -gt $c ] && [ $d -gt $e ]
then
    max=$d
elif [ $e -gt $a ] && [ $e -gt $b ] && [ $e -gt $c ] && [ $e -gt $d ]
then
    max=$e
fi
if [ $a -lt $b ] && [ $a -lt $c ] && [ $a -lt $d ] && [ $a -lt $e ]
 then
    min=$a
elif [ $b -lt $a ] && [ $b -lt $c ] && [ $b -lt $d ] && [ $b -lt $e ]
 then
    min=$b
elif [ $c -lt $a ] && [ $c -lt $b ] && [ $c -lt $d ] && [ $c -lt $e ]
 then
     min=$c
elif [ $d -lt $a ] && [ $d -lt $b ] && [ $d -lt $c ] && [ $d -lt $e ]
 then
     min=$d
elif [ $e -lt $a ] && [ $e -lt $b ] && [ $e -lt $c ] && [ $e -lt $d ]
 then
    min=$e
fi
echo "$max is maximum"
echo "$min is minimum"
