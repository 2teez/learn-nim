#!/usr/bin/env bash
# Date: 09th Oct. 2026
# author: omitida
# Description: Makefile for nim programming language
#
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
    file="${1}"
    file_extension="${file#.*}"
    filename="${file*.}"
    echo "${filename}" "${file_extension}" "${file}"
}

function create_nim_file() {
    echo ""
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
            ;;
        r)
            ;;
        h)
            ;;
        *)
            echo "Invalid option"
            exit;
    esac
done
