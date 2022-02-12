#!/bin/bash -x

num1=20;
num2=20;
if [ $num1 -gt  $num2 ]
then
	echo "$num1 is greater than $num2"
elif [ $num2 -gt $num1 ]
then
	echo "$num2 is greater than $num2"

elif [ $num1 -eq $num2 ]
then
	echo "$num1 is equal to $num2"

else
	echo "$num2 is lesser than $num1"
fi


