#!/bin/bash

# to call:
# ./21_filesAndDirectories.sh d temp
# ./21_filesAndDirectories.sh f temp.txt

echo "Files and directories"

if [ $1 = "d" ]; then
    mkdir -m 755 $2
    echo "dir created ok"
    ls -la $2
elif [ $1 == "f" ]; then
    touch $2
    echo "file created ok"
    ls -la $2
else
    echo "wrong option: $1"
fi

