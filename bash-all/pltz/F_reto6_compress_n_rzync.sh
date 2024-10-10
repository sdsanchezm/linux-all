#!/bin/bash

option="VariableOption"
result="VariableResult"
date1=$(date +"%F_%H")

echo "option value is: $option" > logOption_$date1.txt
echo "result value is: $result" > logResult_$date1.txt

# packing and comprassing files
echo -e "\n starting packing and compressing using tar and gz"
tar -czvpf logOption_$date1.tar.gz logOption_$date1.txt
tar -czvpf logResult_$date1.tar.gz logResult_$date1.txt
sleep 3

# adding cipher with openSSL
echo -e "\n adding cipher a logOption_$date1.tar.gz"
openssl enc -aes-256-cbc -e -in logOption_$date1.tar.gz -out logOption_$date1.tar.gz.enc

echo -e "\n adding cipher logResult_$date1.tar.gz"
openssl enc -aes-256-cbc -e -in logResult_$date1.tar.gz -out logResult_$date1.tar.gz.enc

# creating a backup folder to move and transfer
echo -e "\n moving ciphered files to a new folder..."
mkdir -m 755 textFilesBackup
mv logOption_$date1.tar.gz.enc textFilesBackup
mv logResult_$date1.tar.gz.enc textFilesBackup 
sleep 3

# pass from a remote server to another folder using rsync
read -p "enter host: " host
read -p "enter user: " user

echo -e "\n transferring files"
rsync -avz textFilesBackup $user@$host:/home/jamecho

