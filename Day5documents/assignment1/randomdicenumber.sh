#!/bin/bash/ -x

D=5;
Z=0;
z=1;
R=$((RANDOM%D));
dice1=$(( $R + $z ));
echo $dice1;


