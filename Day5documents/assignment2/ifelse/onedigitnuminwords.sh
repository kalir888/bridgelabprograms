#!/bin/bash -x

read -p "enter a single digit number" A;
if [ $A -eq 1 ]
then
	echo "one";
elif [ $A -eq 2 ]
then
	echo "two";
elif [ $A -eq 3 ]
then
	echo "three";
elif [ $A -eq 4 ]
then
	echo "four";
elif [ $A -eq 5 ]
then
	echo "five";
elif [ $A -eq 6 ]
then
	echo "six";
elif [ $A -eq 7 ]
then
	echo "seven";
elif [ $A -eq 8 ]
then
	echo "eight";
elif [ $A -eq 9 ]
then
	echo "nine";
else
	echo "you have entered more than a single digit number";
fi

