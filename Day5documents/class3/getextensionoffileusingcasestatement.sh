##!/bin/bash -x

for file in `ls .`
do
	echo $file ;
	extension=`echo $file | awk -F. '{print $2}'`;
case $extension in
txt)
	echo "$file is txt file"
	;;
pdf)
   echo "$file is pdf file"
	;;
java)
   echo "$file is java file"
	;;
xlsx)
   echo "$file is excel file"
	;;
csv)
   echo "$file is csv file"
	;;
xml)
   echo "$file is xml file"
	;;
*)
	echo "invalid file"
esac
done




