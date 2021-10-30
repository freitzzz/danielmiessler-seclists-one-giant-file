#!/bin/sh

print_help () {

  echo 'Finds all .txt files in a directory and merges them into a single file'
  echo 'First argument should be the scanning directory'
  echo 'Second argument should be the name (plus extension) of the output file'
}


if [ $# -eq 0 ] || [ $1 == '-h' ]
  then
    print_help
else
  input_dir=$1
  output_file=$2

  txtfiles=$(find $input_dir -type f -name '*.txt');

  for file in $txtfiles; do
    cat $file >> $output_file
  done
fi
