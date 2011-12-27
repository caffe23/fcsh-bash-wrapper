#!/bin/bash
# fcsh compiler wrapper.
# run this script from your sources directory 

fcshprg="fcsh"

# Creates the named pipe
pipein=/tmp/fcshpipein
pipeout=/tmp/fcshpipeout

trap "rm -f $pipein && rm -f $pipeout" EXIT

if [ ! -p $pipein ]; then
    mkfifo $pipein
fi
if [ ! -p $pipeout ]; then
    mkfifo $pipeout
fi

# Redirect input and output
while sleep 1; do 
    read line <$pipein
    echo "$line"
done | "$fcshprg" &>$pipeout

