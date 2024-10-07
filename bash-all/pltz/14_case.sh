#!/bin/bash

option=""

echo "example - Case in bash"
read -p "enter an option from A - Z:" option
echo -e "\n"

case $option in
    "A") echo -e "\n operation save file";;
    "B") echo "Operation delete file";;
    [C-E]) echo "Not implemented";;
    "*") echo "wrong option"
esac

