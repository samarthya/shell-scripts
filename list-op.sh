#!/bin/bash

#declares an empty list
mylist=()
# declare 2
declare -a mylist2

mylist+=(1)
mylist+=(2)
mylist+=(3)
mylist+=(4)
mylist+=( " ab c"  5 6 7 8)

echo -e "\nThe element count is: ${#mylist[@]} or ${#mylist[*]}"

# Iterating the list
for element in "${!mylist[@]}"; do
    echo -e "\tElement: $element; value: ${mylist[$element]}"
done

echo -e "\n element 2 = ${mylist[2]} & length is ${#mylist[2]}"

echo -e "\nDump or list:"
declare -p mylist

echo -n      "\${mylist[@]}   = " ; printf "%q|"  ${mylist[@]}
echo -en   "\n\${mylist[*]}   = " ; printf "%q|"  ${mylist[*]}
echo -en "\n\"\${mylist[@]}\" = " ; printf "%q|" "${mylist[@]}"
echo -en "\n\"\${mylist[*]}\" = " ; printf "%q|" "${mylist[*]}"
echo ""

printf "%q|" "${mylist[@]:5:2}"