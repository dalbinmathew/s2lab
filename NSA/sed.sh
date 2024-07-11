read -p "enter the filename:" file
echo "enter the contents of $file:"
cat > $file
read -p "enter the word to replace:" r
read -p "enter the replacing word:" rr
sed -i "s/$r/$rr/g" $file
cat $file