read -p "enter a number" num
istrue=1
if [ $num -eq 1 ]
then
echo "number is not prime or non prime"
elif [ $num -lt 1 ]
then
echo "enter positive number"
exit 1
else
for ((i=2; i<$num; i++))
do
    if [ `expr $num % $i` = 0 ] 
    then
    istrue=0
    break
    fi
done
fi
if [ $istrue -eq 0 ]
then
echo "non prime"
else
echo "prime"
fi