#!/bin/bash

fileLocation=.

function Usage_Exit {
    echo "Usage: ${0##*/} <filepath>"
}

function pathToFile {
    fileLocation=$(realpath $1)
    echo "Absolute Path: $fileLocation"
}

(( $# < 1 )) && Usage_Exit

pathToFile $fileLocation
