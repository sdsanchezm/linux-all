# !/bin/bash
# script to check os variables

option2=2
name2="jara cat"

echo "vars: option: $option2 and name: $name2"

# export variables
export option2

# call the other script
./2_os_variables_check.sh

echo "global var: $TESTVAR1"


