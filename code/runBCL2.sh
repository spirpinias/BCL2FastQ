#!/usr/bin/env bash

source ./config.sh

echo "Number of Processors : ${num_process}"

bcl2fastq \
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

