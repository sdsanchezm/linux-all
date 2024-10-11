#!/bin/bash

number=1

while [ $number -ne 10 ]
do
    echo "printing $number times"
    number=$(( number + 1 ))
done

#n=1
# 1 liner:
n=1;while [ $n -le 5 ]; do echo "number: $n"; ((n++)); done
