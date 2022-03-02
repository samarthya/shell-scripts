#!/bin/bash

if (ls -als); then
 echo "executed successfuly"
fi

if (tar -xzf nofile.tar  2>&1 > /dev/null ); then
    echo " what ?"
else
    echo "file doesn't exist"

fi