#!/bin/bash
read -p "enter your age:" a
if [ $a -ge 18 ]
then
	echo "you are eligible for voting"
else
	echo "you are not eligible for voting"
fi