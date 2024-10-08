#!/bin/bash

echo "nested loops"
for file in $(ls *.txt)
do
    for name in {1..3}
    do
        echo "file name:$file _ $name"
    done
done

