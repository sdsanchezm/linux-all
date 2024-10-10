#!/bin/bash

# $(()) used to evaluate expressions (like arithmetic)
# $() output is returned as a string, when place a command inside (command is executed)

option=0

greet () {
    echo -e "\n hallo $1"
}

greet

sum () {
	local res=$(( $1 + $2 ))
	echo $res
}

echo "sum is: $(sum 3 4)"
# or
total=$(sum 1 2)
echo "sum = $total"
# or 
x=1
y=2
echo "sum = $(sum x y)"

file_exist () {
	if [[ -f "$1" ]]; then
		echo "file $1 exists"
	else
		echo "file $1 does not exist"
	fi
}

file_exist "./a.txt"

loop1 () {
	for ((i=$1; i<=$2; i++)); do
		echo $i
	done
}

loop1 2 10

# example of usage of single and double parenthesis
get_date1 (){
	current_date=$(date)
	echo "current date is: $current_date"
	echo "total: $((5 + 3 - 1))"
}

get_date1
