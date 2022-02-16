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
#function to get the employee hours
getEmpHours()
{
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
	echo $empHours
}


while (( Day<=$NUMBER_OF_WORKING_DAYS ))
do
	empHours=$( getEmpHours $empHours)
	dayByDaySalary[$Day]=$((empHours*EMP_RATE_PER_HOURS));
 	totalSalaryOfEmp=$(($totalSalaryOfEmp+${dayByDaySalary[$Day]}))
	Day=$((Day+1));

done
echo "Day by day salary : ${dayByDaySalary[@]}"
echo "totalSalaryOfEmployee=$totalSalaryOfEmp"



