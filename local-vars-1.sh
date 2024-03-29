#!/bin/bash

m=5

function loopThrough {
    local m=10
    for ((i=0; i<m; i++))
    do
        echo $i
    done
}

# Loops 1 times loopThrough as the same variable is shared between the caller and the callee
for (( i=0; i<m; i++))
do
    echo "Looping: $i"
    loopThrough
done

# If in the global it is greater than  m at line 6 then you will bump into an infinite loop