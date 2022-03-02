#!/bin/bash

no_directory=$1

function listing {
    if (ls ${no_directory} > /dev/null 2>&1 ); then
        return 0
    else
        return 1
    fi
}
if ( listing ); then
    echo "listing was a success"
else 
    echo " Else part"
fi

