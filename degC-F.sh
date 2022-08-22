function degCF() {
read -p "enter degCelsius " C
degF=$((( $C * 9/5 )+ 32 ))
echo "$degF Farenheit"
}

function degFC() {
read -p "enter degFarenheit " F
degC=$((( $F - 32)* 5/9 ))
echo "$degC Celsius"
}

echo "enter 1 for conversion of degC to degF"
echo "enter 2 for conversion of degF to degC"
read -p "enter your choice" n
case $n in
   1)
     degCF
     ;;
   2)
     degFC
     ;;
esac
