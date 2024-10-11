# pltz 

## vim basic conf

- file and config under `~/.vimrc`
    ```
        set showmode
        set autoindent
        set tabstop=4
        set expandtab
        set number
        syntax on
    ```

- type
    - type and origin of the file
    - `type ls` or `type cd`

## echo

- read -n 1 -s -r -p "press enter to continue..."
    - read: reads input from the user
    - -n 1: read accept only one character of input
    - -s: tells read to suppress output of the character entered (keeps input silent, often used for password entry)
    - -r: ensures backslashes are not interpreted as escape characters
    - -p displays a prompt message before waiting for the input

## VARS
- `/etc/profile` all vars for the system
- vars scoope is limted to the process that created them unless "export" is used

## Conditionals info

- Numerical Comparison:
    - `-eq: equal`
    - `-ne: not equal`
    - `-lt: less than`
    - `-le: less than or equal`
    - `-gt: greater than`
    - `-ge: greater than or equal`
- String Comparison:
    - `=: equal`
    - `!=: not equal`
    - `-z: string is empty`
    - `-n: string is not empty`
- File Tests:
    - `-e file: file exists`
    - `-d file: file is a directory`
    - `-f file: file is a regular file`
    - `-r file: file is readable`
    - `-w file: file is writable`
    - `-x file: file is executable`

- Brackets or Parentheses
    - Single brackets [ ]
        - it is used for most conditions
        - it needs spaces around operators
- Double brackets [[ ]]
    - it provides additional functionality like pattern matching and better handling of strings (with spaces)
    - it's more flexible
    - it's recommended for modern scripts

- AND (&&) or OR (||) are used to combine conditionals
    - 
    ```bash
    if [ $num -gt 5 ] && [ $num -lt 10 ]; then
        echo "number is between 5 and 10."
    fi
    ```
    - 
    ```bash
    if [ $num -eq 5 ] || [ $num -eq 10 ]; then
        echo "The number is 5 or 10."
    fi
    ```

## vim basic
- details at
    - [https://gist.github.com/ruph/1437650]
    - [https://blog.desdelinux.net/la-configuracion-para-vim-definitiva/]


## bash cheatSheet
- [https://devhints.io/bash]
