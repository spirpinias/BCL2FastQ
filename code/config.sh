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

# Files

basecalls=$(find -L ../data -type d -name "BaseCalls")
flowcell=$(find -L ../data -type d -name "flowcell")
bcl2=$(find -L ../data -name "bcl2fastq")

# Parameters

if [ -z "${1}" ]; then
  num_process=$(cat /proc/cpuinfo | grep processor | wc -l)
else
  num_process="${1}"
fi

if [ "${2}" = "True" ]; then
    ignore_bcls="--ignore-missing-bcls"
else
    ignore_bcls=""
fi

if [ "${3}" = "True" ]; then
    ignore_filter="--ignore-missing-filter"
else
    ignore_filter=""
fi

if [ "${4}" = "True" ]; then
    ignore_positions="--ignore-missing-positions"
else
    ignore_positions=""
fi

if [ "${5}" = "True" ]; then
    ignore_controls="--ignore-missing-controls"
else
    ignore_controls=""
fi

if [ -z "${6}" ]; then
  tiles=""
else
  tiles="--tiles ${6}"
fi

if [ -z "${7}" ]; then
  min_trim_read_len=""
else
  min_trim_read_len="--minimum-trimmed-read-length ${7}"
fi