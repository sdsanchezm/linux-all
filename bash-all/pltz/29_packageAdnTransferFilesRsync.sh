#!/bin/bash

echo "transfer files to a differejnt machine using rsync"

host=""
user=""

read -p "enter host details:" host
read -p "enter user:" user
echo -e "\n transfering folder/files to a different location/machine using rsync"
# rzyn must be installed
# dnf/apt install rsync

# rsync usage:
# rsync <options> <origin> <destiny>
rsync -avz g.txt ss@localhost:/home/jamecho/temp
#rsync -avz $(pwd) $user@$host:/home/jamecho/progs/temp

# options for rsync
# a, keep user, groups and permissions
# v, verbose
# z, compress to send data
# h, show transfer rates
# --delete, removes everything in the destiny that is no longer in the origin
# example
# rsync -avzh --delete ~/desk/pics/ ~/temp/pics
# nice doc: https://atareao.es/software-linux/sincronizacion-a-fondo-con-rsync/
