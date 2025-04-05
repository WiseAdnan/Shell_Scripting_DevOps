i#!/bin/bash

<< comment
this is jsut for demo purpose

comment

student_result(){
read -p "Enter the Value:" Marks
minmValue="35"
mxmValue="100"

if [[ $Marks -ge $minmValue && $Marks -lt $mxmValue  ]];
then
echo " $1 is pass"

elif [[ $Marks -eq "$mxmValue" ]];
then
   echo  " $1 is topper of the class"

else
  echo "$1 failed"
fi
}

student_result Rohit
