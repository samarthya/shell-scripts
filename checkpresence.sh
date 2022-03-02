#!/bin/bash

function set_var {
    local -n myVar=$1
    echo " before: $myVar"
    myVar="New Value"
    echo " After: ${myVar}"
}


(( $# < 1 )) && (echo " Usage: ${0##*/} <any value>")  && exit 1;
OLDVALUE=$1
echo " Before function invoke: OLDVALUE := ${OLDVALUE}"
echo " Invoking the function change"
set_var OLDVALUE
echo " After function invoke: OLDVALUE := ${OLDVALUE}"