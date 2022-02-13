#!/bin/bash -x
#normalway

n=`echo $n | awk '{print ((1+1/2))}'`;
echo $n;
m=`echo $n | awk '{print (($1+1/3))}'`;
echo $m;

#iterativeway

read -p " enter a number " a
s=1;
t=0;
for (( i=2; i<=$a; i++ ))
do
	t=`echo $t $i | awk '{print ((1/$2))}'`
	s=`echo $s $t | awk '{print (($1+$2))}'`
done
echo " the harmonic number of the given number is = $s ";

