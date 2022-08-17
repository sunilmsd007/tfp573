echo "enter following numbers to perform unit conversion"
echo "1. Feet to Inch"
echo "2. Inch to Feet"
echo "3. Feet to Meter"
echo "4. Meter to Feet"
a=3.281
read -p "enter the choice: " n
case $n in
   1)
     read -p "enter the unit length; " l
     x=$(( $l*12 ))
     echo "$l feet is equals to $x inches"
     ;;
   2)
     read -p "enter the unit length: " l
     x=`echo $l | awk '{print $1/12}'`
     echo "$l inch is equals to $x feet"
     ;;
   3)
     read -p "enter the unit length: " l
     x=`echo $l $a | awk '{print $1/$2}'`
     echo "$l feet is equals to $x meter"
     ;;
   4)
     read -p "enter the unit length: " l
     x=`echo $l $a | awk '{print $1*$2}'`
     echo "$l meter is equals to $x feet"
     ;;

esac
