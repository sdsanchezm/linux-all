#!/bin/bash

age=0

echo "example If -else in bash"
read -p "how old are you?:" age
if [ $age -le 18 ]; then
    echo "you're a teenager"
elif [ $age -ge 19 ] && [ $age -le 64 ]; then
    echo "you're an adult"
else
    echo "you're senior"
fi

