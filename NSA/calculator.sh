i=1
while [ $i -eq 1 ]
do
read -p "enter first number:" a
read -p "enter second number:" b
read -p "enter operation:" op

case $op in

"+")
echo "`expr $a + $b`"
;;

"-")
echo "`expr $a - $b`"
;;

"/")
d=$((a/b))
echo $d
;;

"*")
echo "`expr $a \* $b`"
;;

*)
echo "invalid option"
;;

esac
read -p "do you want to continue (1/0):" i
done