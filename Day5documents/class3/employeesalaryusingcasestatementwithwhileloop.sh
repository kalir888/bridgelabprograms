#!/bin/bash -x
#constants
IS_FULL_TIME=1;
IS_PART_TIME=2;
ABSCENT=0;
EMP_RATE_PER_HOURS=30;
NUMBER_OF_WORKING_DAYS=20;

#variables
totalSalaryOfEmp=0;
Day=1;
while (( Day<=$NUMBER_OF_WORKING_DAYS ))
do
	empCheck=$((RANDOM%3));

	case $empCheck in
		$IS_FULL_TIME)
			empHours=8;
			;;
		$IS_PART_TIME)
			empHours=4;
			;;
		*)
			empHours=0;
			;;
	esac
	dayByDaySalary=$((empHours*EMP_RATE_PER_HOURS));
	totalSalaryOfEmp=$(($totalSalaryOfEmp+$dayByDaySalary));
	Day=$((Day+1));
done

echo "totalSalaryOfEmployee=$totalSalaryOfEmp"



