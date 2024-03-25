read -p "enter a number:" n
f=1
while [ $n -gt 0 ]
do
f=$((f*n))
n=$((n-1))
done
echo "factorial:$f"