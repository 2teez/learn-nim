#!/usr/bin/env bash
# Date: 09th Oct. 2026
# author: omitida
# Description: Makefile for nim programming language
#
filename=
function help() {
    echo "Usage: ./makenim -<option> <filename>"
    echo "Available Options"
    echo "=================="
    echo "-c:   compile nim file."
    echo "-d:   delete specified file."
    echo "-g:   create a generic nim file"
    echo "-h:   display all available options."
    echo "-r:   run a compiled nim file."
}

function remove_ext() {
    filename="${1}"
    file_extension="${filename##*.}"
    if [ "${file_extension}" != "nim" ]; then
        filename="${filename%.*}.nim"
    fi
}

function create_nim_file() {
    filename="${1}"
    remove_ext "${filename}"
    echo "echo \"Hello, World\"" > "${filename}"
}

if [ "$#" -ne 2 ]; then
 help; exit;
fi

optstring="c:g:r:h"

while getopts "${optstring}" opt; do
    case "$opt" in
        c)
            ;;
        g)
            # create a generic nim file
            filename="${OPTARG}"
            create_nim_file "${filename}"
            ;;
        r)
            # run a filename
            filename="${OPTARG}"
            nim r "${filename}"
            ;;
        h)
            ;;
        *)
            echo "Invalid option"
            exit;
    esac
done
