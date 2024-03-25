read -p "enter a number:" n
r=$(echo $n | rev)
if [ "$n" -eq "$r" ]
then
echo "palindrome"
else
echo "not palindrome"
fi