#!/bin/bash -x

read -p " Enter Date:-" date
read -p " Enter Month:-" Month
march=3;
june=6;
if [ $Month -eq $march -a $date -gt 19 ]
then
	echo "true";
elif [ $Month -gt $march -a $Month -lt $june ]
then
	echo "true";
elif [ $Month -eq $june -a $date -lt 21 ]
then
	echo "true";
else
	echo "false";
fi

