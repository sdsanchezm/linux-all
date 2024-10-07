#!/bin/bash

age=0
country=""
pathFile=""

read -p "enter age:" age
read -p "enter country:" country
read -p "enter path of file:" pathFile

echo -e "\n conditional expressions w numbers"
if [ $age -lt 10 ]; then
    echo "person in young"
elif [ $age -ge 10 ] && [ $age -le 17 ]; then
    echo "person is teenager"
else
    echo "person is adult"
fi

echo -e "\n copnditional expressions with strings "
if [ $country = "EEUU" ]; then
    echo "person is from usa"
elif [ $country = "Scotland" ] || [ $country = "Canada" ]; then
    echo "person from north america"
else
    echo "unknown nationality"
fi


echo -e "\n conditionals with files"
if [ -d $pathFile ]; then
    echo "path $pathFile exist"
else
    echo "path $pathFile does not exist"
fi



