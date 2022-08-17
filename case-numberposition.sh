read -p "enter number position" n
case $n in
  1)
    echo "unit"
    ;;
  10)
    echo "ten"
    ;;
  100)
    echo "hundred"
    ;;
  1000)
    echo "thousand"
    ;;
  10000)
    echo "ten thousand"
    ;;
  *)
    echo "enter valid number"
     ;;
esac
