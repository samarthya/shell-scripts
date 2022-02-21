#!/bin/bash

declare -a mylist

#  -a	to make NAMEs indexed arrays (if supported)
mylist=(foo bar baz one two "three four")

range=${#mylist[@]}
random=$(( $RANDOM % $range ))  # 0 to list length count

echo "range = $range, random = $random, choice = ${mylist[$random]}"

# Shorter, but less readable 6 months from now:
# echo "choice = ${mylist[$(( $RANDOM % ${#mylist[@]} ))]}"