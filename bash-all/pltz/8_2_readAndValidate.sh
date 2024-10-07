#!/bin/bash

# using regex to validate input

# ^ start 
# $ end
# * 0 or more occurrences
# + 1 or more occurrences
# {n} number of times
# [] set of characters

numbersRegex='^[0-9]{10}$' 
countryRegex='^EC|COL|US$'
dateRegex='^(19|20)([0-9]{2})(0[1-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$'

echo "valdiation w/ regex"
read -p "enter the id: " id
read -p "enter a country: " country
read -p "enter a date yyyymmdd: " date

#Validamos la informacion

if [[ $id =~ $regexNum ]]; then
        echo "id: $id valid"
else
        echo "id: $id invalid"
fi

if [[ $pais =~ $paisRegex ]]; then
        echo "country: $pais valid"
else
        echo "country: $pais invalid"
fi

if [[ $date =~ $dateRegex ]]; then
        echo "date: $date valid"
else
        echo "date: $date invalid"
fi

