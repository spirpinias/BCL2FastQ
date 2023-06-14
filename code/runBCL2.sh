#!/usr/bin/env bash

source ./config.sh

echo "Number of Processors : ${num_process}"

bcl2fastq \
-i ${basecalls} \
-R ${flowcell} \
-o ../results/ \
${ignore_bcls} \
${ignore_filter} \
${ignore_positions} \
${ignore_controls} \
-r ${num_process} \
-p ${num_process} \
-w ${num_process} \
${tiles} \
${min_trim_read_len} \
${mask_short_adapter_reads} \
${adapter_stringency} \
${write_fastq_reverse}
