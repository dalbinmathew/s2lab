i=1
read -p "enter first number:" a
while [ $i -eq 1 ]
do
read -p "enter next number:" b
echo "choose your operation (1.addition | 2.subtraction | 3.division | 4.multiplication | 5.Exit)"
read -p "enter operation:" op

case $op in

"1")
a=$((a+b))
;;

"2")
a=$((a-b))
;;

"3")
a=$((a/b))
;;

"4")
a=$((a/b))
;;

"5")
exit 1
;;

*)
echo "invalid option"
;;

esac
echo "Answer=$a"
read -p "do you want to continue (1/0):" i
done