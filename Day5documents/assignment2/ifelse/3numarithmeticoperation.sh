#!/bin/bash -x

read -p "enter any three numbers : " a b c ;
echo "The number that you have entered are a=$a b=$b c=$c ";

A1=$(($a+$b*$c));
echo " a+b*c = $A1 ";
A2=$(($a%$b+$c));
echo " a%b+c = $A2 ";
A3=$(($c+$a/$b));
echo " c+a/b = $A3 ";
A4=$(($a*$b+$c));
echo " a*b+c = $A4 ";

if [ $A1 -gt $A2 -a $A1 -gt $A3 -a $A1 -gt $A4 ]
then
	echo " The max value is a+b*c = $A1 " ;
elif [ $A2 -gt $A1 -a $A2 -gt $A3 -a $A2 -gt $A4 ]
then
   echo " The max value is a%b+c = $A2 " ;
elif [ $A3 -gt $A1 -a $A3 -gt $A2 -a $A3 -gt $A4 ]
then
   echo " The max value is c+a/b = $A3 " ;
else
	echo " The max value is a*b+c = $A4 " ;
fi
if [ $A1 -lt $A2 -a $A1 -lt $A3 -a $A1 -lt $A4 ]
then
   echo " The mini value is a+b*c = $A1 " ;
elif [ $A2 -lt $A1 -a $A2 -lt $A3 -a $A2 -lt $A4 ]
then
   echo " The mini value is a%b+c = $A2 " ;
elif [ $A3 -lt $A1 -a $A3 -lt $A2 -a $A3 -lt $A4 ]
then
   echo " The mini value is c+a/b = $A3 " ;
else
   echo " The mini value is a*b+c = $A4 " ;
fi



