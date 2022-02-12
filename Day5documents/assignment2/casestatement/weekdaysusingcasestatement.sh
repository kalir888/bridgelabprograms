#!/bin/bash -x

read -p "enter a number between 1 and 7" A;
case $A in
	1)
	echo "Sunday";
	;;
	2)
	echo "Monday";
	;;
	3)
	echo "Tuesday";
	;;
	4)
	echo "Wednesday";
	;;
	5)
	echo "Thursday";
	;;
	6)
	echo "Friday";
	;;
	7)
	echo "Saturday";
	;;
	*)
	echo "invalid data";
	;;
esac


