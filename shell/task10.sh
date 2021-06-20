#!/bin/bash

echo "=======Task 10======="
echo
echo

echo "Please give your input? "
read lineCount      
spaceCount=$lineCount
starCount=1

for((i=1;i<=$lineCount;i++))
do
	spaceCount=`expr $spaceCount - 1`
	for((j=0;j<$spaceCount;j++))
	do
		echo -n " "
	done
	for((j=0;j<$starCount;j++))
	do
		echo -n "*"
	done
	for((j=0;j<$spaceCount;j++))
	do
		echo -n " "
	done
	echo
	starCount=`expr $starCount + 2`
done

echo