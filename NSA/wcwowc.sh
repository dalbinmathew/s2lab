c=0
read -p "enter the filename:" file
echo "enter the contents of $file:"
cat > $file
for c in $file
do
echo "$c"
count=$((count + 1))
done
echo "No of words:$count"