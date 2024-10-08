#!/bin/bash

option=0

while :
do
    clear
    echo "________________________________"
    echo "==postgres utility script menu=="
    echo "________________________________"
    echo "1. install Postgres"
    echo "2. uninstall Postgres"
    echo "3. backup"
    echo "4. restore"
    echo "5. exit"

    read -n1 -p "enter an option [1-5]:" option

    case $option in
        1)
            echo -e "\n install postgres....."
            sleep 3
            ;;
        2) 
            echo -e "\n uninstall postgres...."
            sleep 3
            ;;
        3) 
            echo -e "\n backup..."
            sleep 3
            ;;
        4) 
            echo -e "\n restore..."
            sleep 3
            ;;
        5)  
            echo " exit"
            exit 0
            ;;
    esac
done 

