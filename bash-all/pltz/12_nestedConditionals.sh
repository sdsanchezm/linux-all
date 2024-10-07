#!/bin/bash

grade=0
continueValidation=""

echo "nested conditionals"
read -n1 -p "enter your grade (1-9):" grade
echo -e "\n"
if [ $grade -ge 7 ]; then
    echo "course passed"
    read -p "are you gonna continue? (y/n):" continueValidation
    if [[ $continueValidation = 'y' ]]; then
        echo "welcome to the next level"
    else
        echo "thank you, hope 2 c u soon!"
    fi
else
    echo "must repeat this course"
fi

