#!/bin/bash

function Usage_Exit {
    echo " Usage: $0 <path name>"
    exit 1
}

(( $# < 1 )) && Usage_Exit

filename=$1
shift

case $filename in
  ./*) echo -n "local "              # begins with ./
        ;&                               # fall through!
  [^/]*) echo -n "relative "         # starts w/ anything but a slash
        ;;&                              # look for other matches
  /*) echo -n "absolute "            # begins with a slash
        ;&                               # fall through
  */*) echo "pathname"               # a slash anywhere
        ;;                               # done
  *) echo "filename"                 # all other
        ;;                               # done
esac