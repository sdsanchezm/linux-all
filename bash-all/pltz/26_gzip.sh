#!/bin/bash

echo "pack all scripts in a tar file named scriptBackup"
tar -cvf scriptBackup.tar *.txt

# when packing with gzip, the tar is deleted
gzip scriptBackup.tar

echo "pack in just 1 file with ratio 9"
gzip -9 a.txt

