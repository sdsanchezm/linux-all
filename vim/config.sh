#!/bin/bash

vimconfig="set showmode\n
set autoindent\n
set tabstop=4\n
set expandtab\n
set number\n
syntax on\n
colorscheme desert\n"

create_vimsys(){
    mkdir -p ~/.vim ~/.vim/autoload ~/.vim/backup ~/.vim/colors ~/.vim/plugged
    touch ~/.vimrc
}

echo -e ${vimconfig} > ~/.vimrc