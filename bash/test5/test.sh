#!/bin/bash

File=./testfile

{
read line1
read line2
read line3
read line4
read line5
} < $File

echo "first line: $line1"
echo "second line: $line2"
echo "$line3"
echo "$line4"
echo "$line5"

exit 0
