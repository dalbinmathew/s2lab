read -p "enter the limit:" n
a=0
b=1
c=0
count=2
echo $a
echo $b
while [ $count -lt $n ]
do
c=$(($a+$b))
echo $c
a=$b
b=$c
count=$(($count+1))
done