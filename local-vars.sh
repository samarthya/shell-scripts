#!/bin/bash

m=5

# Called m = 9 times for 1 to 9 for local m
function loopThrough {
    local m=10
    declare -i j
    for ((j=0; j<m; j++))
    do
        echo $j
    done
}

# Loops 5 times loopThrough
for (( i=0; i<m; i++))
do
    echo "Looping: $i"
    loopThrough
done

