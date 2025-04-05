#!/bin/bash

<< comment
this is jsut for demo purpose

comment

read -p "Enter the Student Name:" Student1
read -p "Enter the value:" value
minmValue="35"
mxmValue="100"

if [[ $value -ge $minmValue && $value -lt $mxmValue  ]];
then
echo " $Student1 is pass"

elif [[ $value -eq "$mxmValue" ]];
then
   echo  " $Student1 is topper of the class"

else 
  echo "$Student1 failed"
fi
