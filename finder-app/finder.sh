#!/bin/sh
# Script for assignment 1
# Author: Gilles Vendranas (gvendranas)


if [ $# -lt 2 ]
then 
    echo "Missing input parameters"
    exit 1
else 
    filesdir=$1
    searchstr=$2
fi
if [ -d "$1" ]
then
    #echo "Directory exists proceed"
    # Find all files in the current directory and its subdirectories
    files=$(find $filesdir -type f)
    # Initialize counters
    total_files=0
    total_lines=0

    # Loop through each file
    for file in $files; do
        # Count the number of matching lines in the current file
        matching_lines=$(grep -c "$searchstr" "$file")
        echo "$file"
        echo "$matching_lines"
        if [ $matching_lines -gt 0 ]
        then
            # Increment the total number of files
            ((total_files++))
        fi
        # Increment the total number of matching lines
        ((total_lines += matching_lines))
    done

    # Print the total number of files and matching lines
    echo "The number of files are $total_files and the number of matching lines are $total_lines"

else
    echo "Direcory $filesdir does not exist"
    exit 1
fi
