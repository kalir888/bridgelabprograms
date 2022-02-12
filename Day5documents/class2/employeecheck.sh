#!/bin/bash/ -x

ispresent=$((RANDOM%2));

if [ $ispresent -eq 1 ]
then
   echo "Employee is present or working"
else
   echo "Employee is absent or not working"
fi

