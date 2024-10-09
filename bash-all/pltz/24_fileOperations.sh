#!/bin/bash



echo "file operations"
# create folder
mkdir -m 755 backupScripts

echo -e "\n copy scripts and validate"

# copy scripts and validate
cp *.* backupScripts/
ls -la backupScripts/

echo -e "\n move dir backupScripts to a different location: $HOME"

# move folder to home
mv backupScripts $HOME

echo -e "\n delete all .txt files"

# delete all *txt files
rm *.txt

