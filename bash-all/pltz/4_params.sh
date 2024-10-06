#!/bin/bash 

# how to call the script:
# script call: $ ./4_params.sh arg1 arg2 arg3
# ./4_params.sh "qew asd" "jara"
 
# shows script name:
printf "\nspecial param: \$0\n"
echo "script name is: $0" 

# $1 is the argument 1, and if it's more than 9, then it should use curly brackets ${10}

# number of params
printf "\nspecial param: \$# (number of params including the file)\n" 
echo "there are $# params" 

# list of params in 1 arg only
printf "\nspecial params \$* (shows all params)\n"
echo "params (only 1 arg) : $*"

# list of params (1 parm per argument)
printf "\nspecial parm: \$@ ()\n"
echo "parms (1 parm per argument) :" 
for param in $@; do 
  echo "$param" 
done 

# displays the pid of the script
printf "\nSpecial Param \$$\n"
echo "pid is: $$" 

# create a background exec
printf "\nspecial param \$!\n"
echo "running the 'sleep' command in background"
sleep 10 & 

# displays pid of the process in background
echo "pid of command 'sleep' in background is: $!" 

# shows the return of the last command in this case 'echo'
printf "\nspecial param: \$?\n"
echo "El código de retorno del comando es: $?" 
echo "this returns: $?"

# Generate an error to test
echo "generating error..." 
lss -l

# dysplay the last command error
echo "the last result was: $?" 

nameOfUser=$1
numberOfUser=$2

echo "user name: $nameOfUser - user number: $numberOfUser"


