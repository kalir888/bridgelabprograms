#!/bin/bash -x

d=899;
x=100;
r1=$(($RANDOM%$d+$x));
r2=$(($RANDOM%$d+$x));
r3=$(($RANDOM%$d+$x));
r4=$(($RANDOM%$d+$x));
r5=$(($RANDOM%$d+$x));
echo "num1=$r1 num2=$r2 num3=$r3 num4=$r4 num5=$r5";
if [ $r1 -lt $r2 -a $r1 -lt $r3 -a $r1 -lt $r4 -a $r1 -lt $r5 ]
	then
		echo "mini value is = $r1";
fi
if [ $r2 -lt $r1 -a $r2 -lt $r3 -a $r2 -lt $r4 -a $r2 -lt $r5 ]
   then
      echo "mini value is = $r2";
fi
if [ $r3 -lt $r2 -a $r3 -lt $r1 -a $r3 -lt $r4 -a $r3 -lt $r5 ]
   then
      echo "mini value is = $r3";
fi
if [ $r4 -lt $r2 -a $r4 -lt $r3 -a $r4 -lt $r1 -a $r4 -lt $r5 ]
   then
      echo "mini value is = $r4";
fi
if [ $r5 -lt $r2 -a $r5 -lt $r3 -a $r5 -lt $r4 -a $r5 -lt $r1 ]
   then
      echo "mini value is = $r5";
fi
if [ $r1 -gt $r2 -a $r1 -gt $r3 -a $r1 -gt $r4 -a $r1 -gt $r5 ]
   then
      echo "max value is = $r1";
fi
if [ $r2 -gt $r1 -a $r2 -gt $r3 -a $r2 -gt $r4 -a $r2 -gt $r5 ]
   then
      echo "max value is = $r2";
fi
if [ $r3 -gt $r2 -a $r3 -gt $r1 -a $r3 -gt $r4 -a $r3 -gt $r5 ]
   then
      echo "max value is = $r3";
fi
if [ $r4 -gt $r2 -a $r4 -gt $r3 -a $r4 -gt $r1 -a $r4 -gt $r5 ]
   then
      echo "max value is = $r4";
fi
if [ $r5 -gt $r2 -a $r5 -gt $r3 -a $r5 -gt $r4 -a $r5 -gt $r1 ]
   then
      echo "max value is = $r5";
fi

