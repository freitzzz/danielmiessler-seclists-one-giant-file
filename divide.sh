#!/bin/sh

print_help () {

  echo 'Divides a file into multiples files based on a 99 Megabyte limit (Github restricts 100M as max file size'
}

if [ $# -eq 0 ] || [ $1 == '-h' ]
  then
    print_help
else
  input_file=$1
  output_file_prefix=${input_file%%.*}

  split -b 99M $input_file $output_file_prefix;
fi
