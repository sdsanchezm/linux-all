#!/bin/bash

option=0

# function to install postgres
install_postgres () {
    echo -e "\n verifying if postgres is installed..."
    verifyInstall=$(which psql)
    if [ $? -eq 0 ]; then
        echo -e "\n Postgres is already installed..."
    else
        read -s -p "enter sudo pass:" password
        read -s -p "enter postgres pass:" passwordPostgres
        echo "$password" | sudo -S apt update
        echo "$password" | sudo -S apt -y install postgresql postgresql-contrib
        sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '{$passwordPostgres}';"
        echo "$password" | sudo -S systemctl enable postgresql.service
        echo "$password" | sudo -S systemctl start postgresql.service
        echo "$password" | sudo -S systemctl status postgresql.service
    fi
    read -n 1 -s -r -p "press enter to continue..."
}

# function to uninstall postgres
uninstall_postgres () {
    echo "uninstall postres in progress..."
    read -s -p "enter sudo pass:" password
    echo -e "\n"
    echo "$password" | sudo -S systemctl stop postgresql.service
    echo "$password" | sudo -S apt -y --purge remove postgresql\*
    echo "$password" | sudo -S rm -r /etc/postgresql
    echo "$password" | sudo -S rm -r /etc/postgresql-common
    echo "$password" | sudo -S rm -r /var/lib/postgresql
    echo "$password" | sudo -S userdel -r postgres
    echo "$password" | sudo -S groupdel postgresql
    read -n 1 -s -r -p "press enter to continue..."
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



