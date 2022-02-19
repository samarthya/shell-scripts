#!/bin/bash

function Usage_Exit {
    echo "Usage: ${0#*/} [-f|-a|-l|-m] string"
}

(( $# < 2)) && Usage_Exit

programName="${0#*/}"
option=${1}
stringMessage="${@:2}"

case ${option} in
  "-f")
        echo ${stringMessage^}
  ;;
  "-a")
        echo ${stringMessage^^}
        ;;
  "-l")
        echo ${stringMessage,}
        ;;
  "-m")
        echo ${stringMessage,,}
        ;;
    *) 
        Usage_Exit
        ;;
esac