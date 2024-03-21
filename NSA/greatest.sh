read -p "enter 2 numbers:" a b
if [ $a -gt $b ]
then
echo $a is greatest
elif [ $a -eq $b ]
then
echo $a and $b are equal
else
echo $b is greatest
fi