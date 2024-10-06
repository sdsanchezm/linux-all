#!/bin/bash

# how to capture info, read and $REPLY

option=0
backupName=""

echo "app postgres utility"
echo -n "enter option:"
read
option=$REPLY
echo -n "enter name for backup:"
read
backupName=$REPLY
echo "option selected is: $option and backup name is: $backupName"

