#!/bin/sh
# The patterns used in parameter expansion are not regular expressions.
# ./suffix.sh /absolute/path ./current/relative relative/path file.name ./file.name
# Total arguments passed: 5
# /absolute/path: [Argument]
# ${i%/*} : /absolute
# ${i##/*} : 
# ./current/relative: [Argument]
# ${i%/*} : ./current
# ${i##/*} : .
# relative/path: [Argument]
# ${i%/*} : relative
# ${i##/*} : relative
# file.name: [Argument]
# ${i%/*} : file.name
# ${i##/*} : file.name
# ./file.name: [Argument]
# ${i%/*} : .
# ${i##/*} : .
#

echo "Total arguments passed: $#"

for i in $@
do 
    echo "${i}: [Argument]"
    echo "\${i%/*} : ${i%/*}"
    echo "\${i##/*} : ${i%%/*}"
done