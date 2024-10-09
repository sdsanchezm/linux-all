# !/bin/bash

# Reto 5. 
# generate a log file
# write in it, the user and date of the log using the format yyyy_MM_DD_HH_mm_ss

echo "generating log file"
touch log.txt

echo "registering login"
user=$USER
date=$(date +%Y_%m_%d-%H:%M:%S)

echo "$user - $date" >> log.txt

sleep 1
echo -e "\n Log saved.\n"
cat log.txt
