#!/bin/bash

# reto7

option=0

actual_processes(){
    echo -e "\n actual processes:"
    ps -ef
    echo "\n"
    read -n 1 -s -r -p "press ENTER to continue..."
}

memory_available(){
    echo -e "\n memory available"
    free -mth
    echo -e "\n"
    read -n 1 -s -r -p "press ENTER to continue..."
}

available_disk_space(){
    echo -e "\n"
    df -h
    echo -e "\n"
    read -n 1 -s -r -p "press ENTER to continue..."
}

network_info(){
    ifconfig -v | cowsay -W 100
    read -n 1 -s -r -p "press ENTER to continue..."
}

configured_environment_variables(){
    echo -e "\n"
    printenv | cowsay -W 100
    echo -e "\n"
    read -n 1 -s -r -p "press ENTER to continue..."
}

program_info(){
    echo -e "\n app that allows you to know vital info of your machine \n" | cowsay -d
    read -n 1 -s -r -p "press ENTER to continue..."
}

backup_info(){
    tar -cvf log.tar log.txt
    bzip2 -f log.tar
    zip -e log.zip log.tar.bz2
    user=""
    host=""
    echo " enter for destiny host"
    read -p "enter host: " host
    read -p "enter user: " user
    echo -e "\n packing and transferring data..."

    rsync -avz $(pwd) $user@$host:/home/jamecho
}

while :
do
    clear
    echo "1. actual processes"
    echo "2. available memory"
    echo "3. disk space"
    echo "4. network info"
    echo "5. env variables"
    echo "6. program info"
    echo "7. info backup"
    echo "8. Exit"

    read -n1 -p "enter an option (1-8): " option

    case $option in
        1)
            echo -e "\n show Procesos Actuales..."
            actual_processes
            ;;
        2)
            echo -e "\n show memory available..."
            memory_available
            ;;
        3)
            echo -e "\n show disk space..."
            available_disk_space
            ;;
        4)
            echo -e "\n network info..."
            network_info
            ;;
        5)
            echo -e "\n env vars configured..."
            configured_environment_variables
            ;;
        6)
            echo -e "\n info of the program..."
            program_info
            ;;
        7)
            echo -e "\n backing up..."
            backup_info
            ;;
        8)
            echo -e "\n get out of here..."
            exit 0
            ;;
        *)
            echo "press a valid option"
            ;;
    esac
done
