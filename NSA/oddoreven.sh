read -p "enter number:" a
if [ $a -eq 0 ]
then
echo number is zero
elif [ `expr $a % 2` -eq 0 ]
then
echo even number
else
echo odd number
fi