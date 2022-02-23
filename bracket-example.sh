#!/bin/bash

DIR="INVALIDDIR"

# Will display the error message and go to else
if cd DIR; then
    echo "Should not come here"
else
    echo "All right the command was executed!"
fi

if [ $dir ]; then
    echo "Should not come here"
else
    echo "All right the command was executed!"
fi