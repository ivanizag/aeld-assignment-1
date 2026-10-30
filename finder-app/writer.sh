#!/bin/sh
# Assignment script:

# 1.- Accepts the following arguments: the first argument is a full path to a file (including
# filename) on the filesystem, referred to below as writefile; the second argument is a text 
# string which will be written within this file, referred to below as writestr

# 2.- Exits with value 1 error and print statements if any of the arguments above were not
# specified

# 3.- Creates a new file with name and path writefile with content writestr, overwriting any
# existing file and creating the path if it doesn’t exist. Exits with value 1 and error print
# statement if the file could not be created.

if [ $# -lt 2 ]
then
    echo "Error: Missing required parameters. Usage: $0 <writefile> <writestr>"
    exit 1
fi

WRITEFILE=$1
WRITESTR=$2

echo "$WRITESTR" > "$WRITEFILE" || { echo "Error: Could not write to $WRITEFILE"; exit 1; }

