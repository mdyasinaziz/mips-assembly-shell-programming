#!/bin/bash

echo "=======Task 6======="
echo
echo

echo "Enter Student's Number Please: "
read number   

if [[ $number -ge 90 && $number -le 100 ]]; then
	echo "A"	
elif [[ $number -ge 80 && $number -le 89 ]]; then
	echo "B"	
elif [[ $number -ge 70 && $number -le 79 ]]; then
	echo "C"
elif [[ $number -ge 60 && $number -le 69 ]]; then
	echo "D"
elif [[ $number -ge 50 && $number -le 59 ]]; then
	echo "E"
elif [[ $number -ge 0 && $number -le 49 ]]; then
	echo "F"			
else
echo "INVALID NUMBER"
fi