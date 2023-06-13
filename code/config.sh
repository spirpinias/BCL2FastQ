#!/usr/bin/env bash

if [ $# -eq 0 ]; then
    echo "No arguments supplied"
else
  echo "args:"
  for i in $*; do 
    echo $i 
  done
  echo ""
fi

# Illumina

if [ -z "${1}" ]; then
  num_process=$(cat /proc/cpuinfo | grep processor | wc -l)
else
  num_process="${1}"
fi
