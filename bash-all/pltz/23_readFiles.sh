#!/bin/bash

# usage:
# ./23_readFiles.sh d.txt

echo "read a file"
cat $1
echo -e "\n store data in a var"
# w/ backticks a command is executed
valueCat=`cat $1`
echo "$valueCat"

# IFS (Internal Field Separator) variable is used 
# to avoid whitespaces, are trimmed
echo -e "\nL"
while IFS= read line
do
    echo "$line"
done < $1

