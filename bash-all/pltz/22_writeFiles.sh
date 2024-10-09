#!/bin/bash

# to use:
# ./22_writeFiles.sh c.txt

# EOM: End Of Message 
# EOF: End Of File
# >> # Concat
# >  # Replace

echo "write in a file"

# writing using echo
echo "adding text using echo" >> $1

# here, add all before "<<" then write the text until the "EOM"
# writing using cat
cat <<EOM >>$1
test test
EOM

# writing using cat 2
cat <<EOM >>$1
$2
EOM
