#!/bin/bash

arrayOfNumbers=(1 2 3 4 5 6 21 42)
arrayOfStrings=(Jamecho, Marrana, Amparo, Jara)
arrayOfRanges=({A..Z} {10..20})

echo "array of Numbers:${arrayOfNumbers[*]}"
echo "array of strings:${arrayOfStrings[*]}"
echo "array of Ranges:${arrayOfRanges[*]}"

echo "size of array of Numbers:${#arrayOfNumbers[*]}"
echo "size of array of strings:${#arrayOfStrings[*]}"
echo "size of array of Ranges:${#arrayOfRanges[*]}"

echo "position 3 array of Numbers:${arrayOfNumbers[3]}"
echo "position 3 array of Strings:${arrayOfStrings[3]}"
echo "position 3 array of Ranges:${arrayOfRanges[3]}"

# specific position, 20
arrayOfNumbers[7]=20
# unseting specific position
unset arrayOfNumbers[0]
# print array
echo "array of Numbers:${arrayOfNumbers[*]}"
# get the size of it
echo "size array of Ranges:${#arrayOfNumbers[*]}"


