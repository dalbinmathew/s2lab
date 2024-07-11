read -p "enter existing file name:" file
read -p "Enter line number: " l
echo "Start printing from line $l"
tail +$l $file