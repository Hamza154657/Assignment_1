#!/bin/bash

#check the number of arguments
if [ $# -ne 2 ]; then
  echo "Error: Two arguments are required: <directory path> <String>"
  exit 1
fi

#store the arguments
dir=$1
string=$2

#check if the directory exists
if [ ! -d $dir ]; then
  echo "Error: Directory '$dir' does not exist!"
  exit 1
fi

files=$(ls -1 $dir | wc -l)
num_of_lines=$(grep -r "$string" "$dir" | wc -l)

echo "The number of files are "$files" and the number of matching lines are "$num_of_lines""
exit 0
