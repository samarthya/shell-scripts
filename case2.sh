#!/bin/sh
# set +x
# echo $#
# echo $*

var=$1
case "$var" in

    [Nn][Oo]* )
        echo "Fine. Leave then."
        exit
    ;;
    [Yy]?? | [Ss]ure | [Oo][Kk]* )
        echo "OK. Glad we agree."
    ;;
    * ) echo 'Try again.'
        continue
    ;;
esac