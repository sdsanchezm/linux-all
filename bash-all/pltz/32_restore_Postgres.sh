#!/bin/bash

option=0
actualDate=`date +%Y%m%d`

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
    echo "uninstall postgres in progress..."
    verifyInstall=$(which psql)
    if [ $? -eq 1 ]; then
        echo " Postgres is not installed"
	else
	    read -s -p "enter sudo pass:" password
	    echo -e "\n"
	    echo "$password" | sudo -S systemctl stop postgresql.service
	    echo "$password" | sudo -S apt -y --purge remove postgresql\*
	    echo "$password" | sudo -S rm -r /etc/postgresql
	    echo "$password" | sudo -S rm -r /etc/postgresql-common
	    echo "$password" | sudo -S rm -r /var/lib/postgresql
	    echo "$password" | sudo -S userdel -r postgres
	    echo "$password" | sudo -S groupdel postgresql
	fi
	read -n 1 -s -r -p "press enter to continue..."
}

# function to create a backup
create_backup () {
    echo "list databases"
    sudo -u postgres psql -c "\l"
    read -p "pick DB to backup:" databaseBackedup
    echo -e "\n"
    if [ -d "$1" ]; then
        echo "establishing directory permissions"
        echo "$password" | sudo -S chmod 755 $1
        echo "creating backup..."
        sudo -u postgres pg_dump -Fc $databaseBackedup > "$1/databaseBackedup$backupDate.bak"
        echo "backup created successfully at: $1/databaseBackedup$backupDate.bak"
    else
        echo "directory $1 does not exist"
    fi
    read -n 1 -s -r -p "press enter to continue..."
}

# function 2 for backing up the db
create_backup2 () {
echo "list databases..."
sudo -u postgres psql -c "\l"
read -p "select db to backup: " DbToBackup
echo -e "\n"
	if [ -d "$1" ]; then
		echo "dir permissions"
        echo "$password" | sudo -S chmod 755 $1
        echo "creating backup..."
        sudo -u postgres pg_dump -Fc $DbToBackup &gt; "$1/DbToBackup$actualDate.bak"
        echo "backup completed ok at : $1/DbToBackup$actualDate.bak"
	else
        echo -e  "\n dir $1 does not exist"
        echo -e "\n"
        read -n1 -p "would you like to create the dir? $1 (y/n)" responseDb
        if [ $responseDb = "s" ]; then
        	sudo mkdir $1
            echo "$password" | sudo -S chmod 755 $1
            echo -e "\n backing up..."
            sleep 3
            sudo -u postgres pg_dump -Fc $DbToBackup &gt; "$1/DbToBackup$actualDate.bak"
            echo "back up created ok at: $1/DbToBackup$actualDate.bak"
		else
			echo -e "\n exiting, no backup was created."
            sleep 3
		fi
	fi

read -n 1 -s -r -p "press [ENTER] to continue..."

}


# function to restore
restore_backup1 () {
    echo "list backups"
    ls -1 $1/*.bak
    read -p "select the backup to restore:" backupToRestore
    echo -e "\n"
    read -p "enter the name of the destination database:" databaseDestiny
    # verify if db exists
    verifyBdd=$(sudo -u postgres psql -lqt | cut -d \| -f 1 | grep -wq $databaseDestiny)
    if [ $? -eq 0 ]; then
        echo "restoring db in: $databaseDestiny"
    else
        sudo -u postgres psql -c "create database $databaseDestiny"
    fi

    if [ -f "$1/$backupToRestore" ]; then
        echo "restoring backup..."
        sudo -u postgres pg_restore -Fc -d $databaseDestiny "$1/$backupToRestore"
        echo "listing database(s)"
        sudo -u postgres psql -c "\l"
    else
        echo "the backup $backupToRestore does not exist"
    fi    
    read -n 1 -s -r -p "press enter to continue..."
}

restore_backup2 () {
read -p "enter directory where backups are creaeted: " directoryBackup
if [ -d $directoryBackup ]; then

echo "listing backup files..."
sleep 3
ls -la $directoryBackup
read -p "enter .bak file to restore:  " backupToRestore
#echo -e "\n"
if [ -f "$directoryBackup/$backupToRestore" ]; then

    read -p "enter destiny database name:  " DbDestinyName
    verifyBdd= $(sudo -u postgres psql -lqt | cut -d \| -f 1 | grep -wq $DbDestinyName)
    if [ $? -eq 0 ]; then
            echo "Restaurando en la Base de Datos destino...$DbDestinyName"
            sudo -u postgres pg_restore -Fc -d $DbDestinyName "$directoryBackup/$backupToRestore"
            echo "Listar Bases de datos..."
            sudo -u postgres psql -c "\l"
        else
            echo  "Db not found..."
            echo  "creating destiny Db..."
            sleep 4
            sudo -u postgres psql -c "CREATE DATABASE $DbDestinyName"
            sudo -u postgres pg_restore -Fc -d $DbDestinyName "$directoryBackup/$backupToRestore"
            echo "listing databases..."
            sudo -u postgres psql -c "\l"
        fi

    else
        echo "file with name entered was not found"
        echo "try again"
    fi
else
    echo "directory entered was not found"
    echo "try again"
fi

read -n1 -s -r -p "press [ENTER] to continue..."

}


DbList(){
	echo -e  "\n DB created so far: "
	sudo -u postgres psql -c "\l"
	read -n 1 -s -r -p "press [ENTER] to continue..."
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



