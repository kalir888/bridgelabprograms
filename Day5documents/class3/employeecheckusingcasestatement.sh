#!/bin/bash/ -x

ispresent=$((RANDOM%2));

case $ispresent in
1)
   echo "Employee is present or working"
	;;
*)
   echo "Employee is absent or not working"
	;;
esac


