#!/bin/bash

option=0

# function to install postgres
install_postgres () {
    echo "installing postgres..."
}

# function to uninstall postgres
uninstall_postgres () {
    echo "uninstall postres..."
}

# function to create a backup
create_backup () {
    echo "backing up..."
    echo "backup dir: $1"
}

# function to restore
restore_process () {
    echo "restoring..."
    echo "restoring directory: $1"
}


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

    # read from user
    read -n1 -p "enter an option [1-5]:" option

    # validate entered option
    case $option in
        1)
            install_postgres
            sleep 3
            ;;
        2) 
            uninstall_postgres
            sleep 3
            ;;
        3) 
            read -p "backup directory :" backupDirectory
            create_backup $backupDirectory
            sleep 3
            ;;
        4) 
            read -p "backups directory:" restoreDirectory
            restore_process $restoreDirectory
            sleep 3
            ;;
        5)  
            echo "exit the script"
            exit 0
            ;;
    esac
done    



