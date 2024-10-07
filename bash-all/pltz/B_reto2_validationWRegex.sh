#!/bin/bash

name_regex='^([A-Z]{1})([a-z]*)$'
surname_regex='^([A-Z]{1})([a-z]*)$'
age_regex='^([1-9][1-9])$'
address_regex='^([A-Z]{1})([a-z]*\s)([A-Z]{2}\s)([0-9]*)$'
phone_regex='^([0-9]{10})$'


function invalid_syntax {
    echo "invalid input, Please try again..."
    echo ""
}

while [[ ! $u_name =~ $name_regex ]]; do
    read -p "first name: " u_name
    if [[ $u_name =~ $name_regex ]]; then
        break
    else
        invalid_syntax
    fi
done

while [[ ! $u_surname =~ $surname_regex ]]; do
    read -p "last name: " u_surname
    if [[ $u_surname =~ $surname_regex ]]; then
        break
    else
        invalid_syntax
    fi
done

while [[ ! $u_age =~ $age_regex ]]; do
    read -p "age: " u_age
    if [[ $u_age =~ $age_regex ]]; then
        break
    else
        invalid_syntax
    fi
done

while [[ ! $u_phone =~ $phone_regex ]]; do
    read -p "phone number: " u_phone
    if [[ $u_phone =~ $phone_regex ]]; then
        break
    else
        invalid_syntax
    fi
done

echo ""

while [[ ! $u_address =~ $address_regex ]]; do
    echo "format: Town State ZIP code"
    echo "example: (Albany LA 012345)"
    read -p "address: " u_address
    if [[ $u_address =~ $address_regex ]]; then
        break
    else
        invalid_syntax
    fi
done

read -p "is all the info correct? [y/n]: " u_answer
if [ $u_answer == "y" ]; then
    echo "printing data: "
    sleep 1s
    echo ""
elif [ $u_answer == "n" ]; then
    echo "please re-enter data:"
    sleep 1s
    clear
else
    echo "You typed: $u_answer"
    echo -e "you've entere an invalid option"
    echo ""
fi


echo "==user-data=="
echo ""
echo "first name: $u_name"
echo "last name: $u_surname"
echo "age: $u_age"
echo "address: $u_address"
echo "phone number: $u_phone"
