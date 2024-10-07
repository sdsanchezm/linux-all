#!/bin/bash

option=0
backupName=""
pass1=""

echo "script postgres utility"
read -n1 -p "enter an option:" option
echo -e "\n"
read -n10 -p "enter the name of the file:" backupName
echo -e "\n"
echo "option:$option , backupName:$backupName"
read -s -p "pass:" pass1
echo "pass: $pass1"

