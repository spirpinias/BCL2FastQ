#!/usr/bin/env bash

source ./config.sh

basecalls=$(find -L ../data -type d -name "BaseCalls")
flowcell=$(find -L ../data -type d -name "flowcell")

./root/capsule/code/usr/local/bin/bcl2fastq \
-i ${basecalls} \
-R ${flowcell} \
-o ../results/ \
--ignore-missing-bcls \
--ignore-missing-filter \
--ignore-missing-positions \
--ignore-missing-controls \
-r ${num_process}
