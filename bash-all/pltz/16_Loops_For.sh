#!/bin/bash

arrayOfNumbers=(21 22 23 24 42 63)

# 1 liners:
for file in *.sh; do echo "$file"; done

echo "Iterations"
for number1 in ${arrayOfNumbers[*]}
do
    echo "number:$number1"
done

echo "iterate string arrays"
for name in "Azabache" "Jara" "Jamecho" "Marrana"
do
    echo "names:$name"
done

echo "iterate files"
for file in *
do
    echo "file names:$file"
done

echo "iterate usign commands"
for file in $(ls)
do
    echo "file name: $file"
done

echo "traditional iterations"
for ((i=1; i<10; i++))
do
    echo "number $i"
done


