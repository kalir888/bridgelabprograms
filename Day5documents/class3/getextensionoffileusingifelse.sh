##!/bin/bash -x

for file in `ls .`
do
	echo $file ;
	extension=`echo $file | awk -F. '{print $2}'`;
if [ $extension == txt ]
then
	echo "$file is txt file";
elif [ $extension == pdf ]
then
   echo "$file is pdf file";
elif [ $extension == java ]
then
   echo "$file is java file";
elif [ $extension == xlsx ]
then
   echo "$file is excel file";
elif [ $extension == csv ]
then
   echo "$file is csv file";
elif [ $extension == xml ]
then
   echo "$file is xml file";
else
	echo "$file is invalid file";
fi
done




