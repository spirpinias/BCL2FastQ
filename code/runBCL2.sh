#!/usr/bin/env bash

source ./config.sh

basecalls=$(find -L ../data -type d -name "BaseCalls")
flowcell=$(find -L ../data -type d -name "flowcell")
bcl2=$(find -L ../data -name "bcl2fastq")

echo "Number of Processors : ${num_threads}"

${bcl2} \
-i ${basecalls} \
-R ${flowcell} \
-o ../results/ \
--ignore-missing-bcls \
--ignore-missing-filter \
--ignore-missing-positions \
--ignore-missing-controls \
-r ${num_process} \
-p ${num_process} \
-w ${num_process}

