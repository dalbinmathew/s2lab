read -p "enter a number:" n
t=$n
r=0
while [ $n -gt 0 ]
do
s=$((n%10))
r=$((s*s*s+r))
n=$((n/10))
done
if [ $r -eq $t ]
then
echo "armstrong number"
else
echo "not armstrong number"
fi