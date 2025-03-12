#!/bin/bash

# Easily copy from /some/directory/file.fil to /some/backup/location/file.fil_MMDDYYYY_HHMM"

bpth="/YOUR/BACKUP/DIRECTORY"

if [[ $# -eq 0 ]] ; then
        echo "Syntax: bkup some/directory/file.fil some/other/file.fil some/other/other/file.fil [...]"
        exit 0

else
        get_path() {
                dirname "$(realpath "$i")"    # Get full path, minus the name
        }

        for i in "$@" ; do
                file=$(realpath "$i")   # Get the file's full path
                path=$(get_path "$i")   # Run the function to get the full path, minus the filename
                base=$(basename "$i")   # Get the file name, without the path
                mkdir -p "$bpth/$path"
                cp "$file" "$bpth/$path/${base}_$(date +%m%d%Y_%H%M)"
        done

fi
