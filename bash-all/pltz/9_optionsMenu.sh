#!/bin/bash

# run as: ./9_optionsMenu.sh -a -b

echo "options script"
echo "opt 1 selected: $1"
echo "opt 2 selected: $2"
echo "options selected: $*"
echo -e "\n"
echo "values"
while [ -n "$1" ]
do
case "$1" in
-a) echo "-a option used";;
-b) echo "-b option used";;
-c) echo "-c option used";;
*) echo "$! is not an option";;
esac
shift
done


