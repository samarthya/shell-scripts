#!/bin/bash

function Usage_Exit {
    echo "${0##*/} <Filename>"
    exit 1
}

(( $# < 1)) && Usage_Exit

shift

filename=$0

if [ ! -e $filename ]; then
    Usage_Exit
fi

echo $(sort -u ${filename} | wc -l)