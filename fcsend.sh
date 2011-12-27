#!/bin/bash
# Send to fcsh the arguments

pipein=/tmp/fcshpipein
pipeout=/tmp/fcshpipeout

if [[ ! -p $pipein ]]; then
    echo "fcsh wrapper not running (fcshw.sh)"
    exit 1
fi

echo "$@" >$pipein

# Read pipe timeout
tout=3

# Read the output
while read -t $tout line; do
    # Loading config file can take a long...
    if [[ "$line" == Loading* ]]; then
        tout=20
    else
        tout=3
    fi    
    echo "$line"
done < $pipeout

