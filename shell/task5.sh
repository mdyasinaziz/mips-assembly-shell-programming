#!/bin/bash

echo "=======Task 5======="
echo
echo

i=0
num=0
primeNumbers=""
for((i=20;i<=70;i++))
do
	counter=0
	for((num=$i;num>=1;num--))
do
	if (( $i % $num == 0 ))
	then
	     counter=`expr $counter + 1`
	fi
done
if [ $counter == 2 ]
then
	primeNumbers="${primeNumbers} $i "
fi
done
echo $primeNumbers





#foo="Hello"
#foo="${foo} World"
#echo $foo

#if (( 5 % 5 == 0 ))
#then
#     echo "valo jinish"
#fi

#	    int i =0;
#       int num =0;
#       String  primeNumbers = "";
#       for (i = 1; i <= 100; i++)         
#       { 		  	  
#          int counter=0; 	  
#          for(num =i; num>=1; num--)
#	     {
#             if(i%num==0)
#	     {
# 		counter = counter + 1;
#	     }
#	  }
#	  if (counter ==2)
#	  {
#	     //Appended the Prime number to the String
#	     primeNumbers = primeNumbers + i + " ";
#	  }	
#     }	
#       System.out.println("Prime numbers from 1 to 100 are :");
#       System.out.println(primeNumbers);