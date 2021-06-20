#!/bin/bash

echo "=======Task 9======="
echo
echo

echo "Please give your input? "
read input      
spaceCount=0

for((i=1;i<=$input;i++))
do
	spaceCount=`expr $input - $i`
	for((j=1;j<=$spaceCount;j++))
	do
		echo -n " "
	done
	for((j=1;j<=$i;j++))
	do
		echo -n "$j"
	done
	echo
done

echo