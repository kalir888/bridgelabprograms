#!/bin/bash -x

read -p "enter a number between 1 and 7" A;
if [ $A -eq 1 ]
then
	echo "Sunday";
elif [ $A -eq 2 ]
then
	echo "Monday";
elif [ $A -eq 3 ]
then
	echo "Tuesday";
elif [ $A -eq 4 ]
then
	echo "Wednesday";
elif [ $A -eq 5 ]
then
	echo "Thursday";
elif [ $A -eq 6 ]
then
	echo "Friday";
elif [ $A -eq 7 ]
then
	echo "Saturday";
else
	echo "invalid data";
fi

