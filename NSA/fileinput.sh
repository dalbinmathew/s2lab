#!/bin/bash
read -p "enter file name:" file1
echo "enter contents of $file1:"
cat > $file1
read -p "enter existing file name:" file2
echo "Displaying copy of contents from $file1 to
$file2"
cp $file1 $file2
cat $file2