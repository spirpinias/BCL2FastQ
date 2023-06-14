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

if [ -z "${8}" ]; then
  mask_short_adapter_reads=""
else
  mask_short_adapter_reads="--mask-short-adapter-reads ${8}"
fi

if [ -z "${9}" ]; then
  adapter_stringency=""
else
  adapter_stringency="--adapter-stringency ${9}"
fi

if [ "${10}" = "True" ]; then
    write_fastq_reverse="--write-fastq-reverse-complement"
else
    write_fastq_reverse=""
fi

if [ "${11}" = "True" ]; then
    with_failed_reads="--with-failed-reads"
else
    with_failed_reads=""
fi

if [ "${12}" = "True" ]; then
    create_fastq_index="--create-fastq-for-index-reads"
else
    create_fastq_index=""
fi

if [ "${13}" = "True" ]; then
    sliding_window="--find-adapters-with-sliding-window"
else
    sliding_window=""
fi

if [ "${14}" = "True" ]; then
    no_compress="--no-bgzf-compression"
else
    no_compress=""
fi

if [ -z "${15}" ]; then
  fast_compress_level=""
else
  fast_compress_level="--fastq-compression-level ${15}"
fi

if [ -z "${16}" ]; then
  barcode_mismatch=""
else
  barcode_mismatch="--barcode-mismatches ${16}"
fi

if [ "${17}" = "True" ]; then
    no_lane_split="--no-lane-splitting"
else
    no_lane_split=""
fi