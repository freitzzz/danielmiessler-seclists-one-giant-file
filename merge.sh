#!/bin/sh

input_dir=$1
output_file=$2

txtfiles=$(find $input_dir -type f -name "*.txt");

for file in $txtfiles; do
	cat $file >> $output_file
done
