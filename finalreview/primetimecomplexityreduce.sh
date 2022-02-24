#!/bin/bash -x

functionprime()
{

	#constants

	IS_PRIME=0;
	NOT_PRIME=1;

	#variables
   primeCheck=0;
   i=2;
	n=$1
   while [ $primeCheck = $IS_PRIME -a $i -lt $n ]
   do
      d=$(( $1%$i ));
      if [ $d -eq 0 ]
      then
         primeCheck=$NOT_PRIME;
      else
			primeCheck=$IS_PRIME;
			i=$(($i+1));
		fi
   done
   case $primeCheck in
      $IS_PRIME)
         echo " $1 is a prime number ";
         ;;
      *)
         echo " $1 is not a prime number ";
         ;;
   esac
}
read -p " Enter the number " A

functionprime $A


