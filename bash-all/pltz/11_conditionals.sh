#!/bin/bash

# There is an space always, after the first square bracket and after the second bracket
# if [_asdasd_] <= these spaces

grade=0
age=0

echo "example: If -else in bash"
read -n1 -p "waht is your grade (1-9):" grade
echo -e "\n"
if (( $grade >= 7 )); then
    echo "you pass "
else
    echo "you do not pass"
fi

read -p "how old are you:" age
if [ $age -le 18 ]; then
    echo "can't vote..."
else
    echo "can vote!"
fi

