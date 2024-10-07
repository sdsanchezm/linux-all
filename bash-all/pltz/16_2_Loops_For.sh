#!/bin/bash

for file in $(ls *.sh)
do
	echo "file: $file"
	while read -r line; do
		echo "$line"
	done < "$file"
done

