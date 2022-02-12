#!/bin/bash -x

read -p " Enter the year: " year;
mod=$(($year%4));
if [ $mod -eq 0 ]
then
	echo "The entered year $year is a leap year";
else
	echo "The entered year $year is not a leap year";
fi

