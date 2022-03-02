#!/bin/bash

port=

function Usage_Exit {
    echo "Usage: ${0##*/} <filepath>"
    exit 1
}

function read_int {
    read -p "Port number (default 80) " port

    if [[ -z $port ]]; then 
        echo "Using default 8080";
        port="8080"
    elif [[ ! $port =~ ^[0-9]+$ ]]; then
        read_int
    fi
}

read_int


echo "Setting port to: $port"