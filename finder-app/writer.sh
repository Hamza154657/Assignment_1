#!/bin/bash

if [ $# -ne 2 ]; then
  echo "Error:Incorrect number of arguments passed! Syntax: writer.sh <file with dir> <String>"
  exit 1
fi

writefile=$1
writestr=$2

mkdir -p $(dirname $writefile)

if echo "$writestr" >$writefile; then
  echo "File written Successfully"
  exit 0
fi
echo "Error: File could not be written"
exit 1
