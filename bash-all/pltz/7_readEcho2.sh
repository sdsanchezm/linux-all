#!/bin/bash

# how to capture info, read and $REPLY

option=0
backupName=""

echo "app postgres utility"
read -p "enter option:" option
read -p "enter name for backup:" backupName
echo "option selected is: $option and backup name is: $backupName"

