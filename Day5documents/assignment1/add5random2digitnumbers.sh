#!/bin/bash -x

R1=$(($(($RANDOM%90))+10));
R2=$(($(($RANDOM%90))+10));
R3=$(($(($RANDOM%90))+10));
R4=$(($(($RANDOM%90))+10));
R5=$(($(($RANDOM%90))+10));
SUM=$(($R1+$R2+$R3+$R4+$R5));
AVG=$(($SUM/5));
echo $R1 $R2 $R3 $R4 $R5;
echo sum=${SUM};
echo avg=${AVG};

