read -p "enter the number:" a
len=${#a}
for ((i=$len-1; i >= 0; i--))
do
r="$r${a:i:1}"
done
if [ "$a" -eq "$r" ]
then
echo "palindrome"
else
echo "not palindrome"
fi
