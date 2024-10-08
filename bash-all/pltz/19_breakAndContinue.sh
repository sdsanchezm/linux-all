#!/bin/bash

echo "break n continue"
for file in $(ls *.txt)
do
    for name in {1..3}
    do
        if [ $file = "b.txt" ]; then
            break;
        elif [[ $file == 4* ]]; then
            continue;
        else
            echo "file name :$file _ $name"
        fi
    done
done


