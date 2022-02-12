#!/bin/bash -x

isFulltime=1;
isParttime=2;
abscent=0;
empRateperhours=30;

empCheck=$((RANDOM%3));
if [ $isFulltime -eq $empCheck ]
then
	empHours=8;
	empSalary=$(($empRateperhours*$empHours));
	echo "salary of the employee is = $empSalary"
elif [ $isParttime -eq $empCheck ]
then
	empHours=4;
	empSalary=$(($empRateperhours*$empHours));
	echo "salary of the employee is = $empSalary"
else
	echo "Employee is absent"
fi


