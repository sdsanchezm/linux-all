#!/bin/bash

for file in $(ls *.sh)
do
	echo "file: $file"
	while read -r line; do
		echo "$line"
	done < "$file"
done

# loop based on arrays
folders=("~/progs" "~/temp")
create_folders(){
	for folder in ${folders[@]}; do
		mkdir $folder
	done
}

# create_folders
