read -p "enter a number:" n
d=$n
r=0
while [ $n -gt 0 ]
do
re=$((n%10))
r=$((r*10+re))
n=$((n/10))
done
if [ $r -eq $d ]
then
echo "palindrome"
else
echo "not palindrome"
fi
