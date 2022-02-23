#!/bin/bash

# Defines myFunction and invoked on line 13
function myFunction {
    echo "Called $FUNCNAME"
    echo "total params: $#"
    for x in "$@"
    do
        echo "$x"
    done
}

myFunction $*

for x in "$*"
do
    echo "$x"
done