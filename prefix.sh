#!/bin/sh
# You can remove characters from the front (prefix or left hand side) 
# or the tail (suffix or right hand side) of that value
# ${ABCDEF#*_} which would remove any sequence of characters up to, and including, an underscore

# Single # says that it will use the shortest match possible (non-greedy). 
# A double ## says to use the longest match possible (greedy).

# ./prefix.sh ./abcde ./feg/ghi 
# Total arguments passed: 2
# ./abcde: [Argument]
# ${i#*/} : abcde
# ${i##*/} : abcde
# ./feg/ghi: [Argument]
# ${i#*/} : feg/ghi
# ${i##*/} : ghi
#
#

echo "Total arguments passed: $#"

for i in $@
do 
    echo "${i}: [Argument]"
    echo "\${i#*/} : ${i#*/}"
    echo "\${i##*/} : ${i##*/}"
done
