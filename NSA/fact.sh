read -p "enter a number:" n
f=1
while [ $n -gt 0 ]
do
f=`expr $n \* $f`
n=`expr $n - 1`
done
echo "factorial:$f"