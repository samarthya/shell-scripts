#!/bin/bash

declare -i port

function Usage_Exit {
    echo "Usage: ${0##*/} <filepath>"
    exit 1
}

function read_int {
    read -p "Port number (default 80) " port

    if [[ $port -le 0 ]]; then
        read_int
    fi
}

read_int


echo "Setting port to: $port"