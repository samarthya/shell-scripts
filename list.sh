#!/bin/bash

VERSION='v1.2b'

function Usage_Exit {
    echo "$0 [color|last|len|long]"
    exit
}

function Ls_Length {
    ls -1 "$@" \
    | while read fn; do
        printf '%3d %s\n' ${#fn} ${fn}
    done | sort -n
}

# Number of arguments is less than 1
(( $# < 1 )) && Usage_Exit    
sub=$1
shift

case $sub in
    color)                                # Colorized ls
        ls -N --color=tty -T 0 "$@"
    ;;

    last | latest)    # latest files                                   
        ls -lrt | tail "-${1:-5}"
    ;;

    len*)                                 # Files with name lengths    
        Ls_Length "$@"
    ;;

    long)                                 # File with longest name
        Ls_Length "$@" | tail -1
    ;;

    *) # Default
        echo "unknown command: $sub"
        Usage_Exit
    ;;
esac