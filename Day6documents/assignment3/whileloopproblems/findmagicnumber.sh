#!/bin/bash -x

echo " Think a number n between 1 to 100 ";
#constants
EQUAL_TO=1;
LESS_THAN=2;
GREATER_THAN=3;
#variables
upperLimit=100;
lowerLimit=1;
newLimit=0;
while (( $upperLimit != $lowerLimit ))
do
	newLimit=$(( ($upperLimit+$lowerLimit)/2 ));
	read -p "if n=$newLimit press 1 or n<$newLimit press 2 or n>$newLimit press 3 " userChoice
	case $userChoice in
		$EQUAL_TO)
			upperLimit=$newLimit;
			lowerLimit=$newLimit;
			;;
		$GREATER_THAN)
			lowerLimit=$newLimit;
			;;
		$LESS_THAN)
			upperLimit=$newLimit;
			;;
		*)
			echo " INVALID ENTRY "
			;;
	esac
done
echo " The number you thought in your mind is $newLimit ";
