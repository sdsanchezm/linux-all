#!/bin/bash

# dnf/apt install zip
# dnf/apt install bzip2
# dnf/apt install gzip

echo "pack all txt files from  scriptBackup"
tar -cvf scriptBackup.tar *.txt
pbzip2 -f scriptBackup.tar

echo "pack directory with tar y pbzip2"
# pbzip2 should be install
# dnf/apt install pbzip2
tar -cf *.sh -c > scriptBackup2.tar.bz2

