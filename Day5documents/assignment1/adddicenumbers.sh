#!/bin/bash -x

R1=$((RANDOM%5))
dice1=$((R1 + 1))
R2=$((RANDOM%5))
dice2=$((R2+1))
total=$(($dice1 + $dice2))
