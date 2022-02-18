#!/bin/sh
# set +x 

var=$1

case "$var" in
    yes ) echo "glad you agreed" ;;
    no  )
        echo "sorry; good bye"
        exit
    ;;
    * ) echo "invalid answer. try again"
esac
