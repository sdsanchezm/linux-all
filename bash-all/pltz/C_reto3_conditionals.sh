#!/bin/bash

selectedRegex='^[1-5]{1}$'

read -p "enter integer from 1 to 5: " selectedOption

if [[ $selectedOption =~ $selectedRegex ]]
then
        if [[ $selectedOption -eq 1 ]]
        then
                echo "you selected 1"
        elif [[ $selectedOption -eq 2 ]]
        then
                echo "you selected 2"
        elif [[ $selectedOption -eq 3 ]]
        then
                echo "you picked 3"
        elif [[ $selectedOption -eq 4 ]]
        then
                echo "you picked 4"
        elif [[ $selectedOption -eq 5 ]]
        then
                echo "picked 5"
        fi
else
        echo "wrong option"

fi

