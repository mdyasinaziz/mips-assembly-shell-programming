#!/bin/bash
echo
echo
echo "=======Task 1======="

a=10
b=20

val1=`expr $a + $b`
val2=`expr $a - $b`
val3=`expr $a \* $b`
val4=`expr $a / $b`

echo "Ans For Addition: $val1 
Ans For Subtraction: $val2
Ans For Multiplication: $val3
Ans For Division: $val4" 


echo
echo
echo "=======Task 2======="

c=2
d=4

val5=$[$c**$d]

echo "Ans for $c To The Power $d is: $val5"



echo
echo
echo "=======Task 3======="



task3lcs () {

m=$1
n=$2
temp=`expr $m \* $n`
while [ $m != $n ]
do
    if [ $m -gt $n ]
    then
            m=`expr $m - $n`
    else
            n=`expr $n - $m`
    fi
done

lcm=`expr $temp / $n`
echo The LCM is: $lcm

}

#invoke

task3lcs 69 9