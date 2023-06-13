#!/usr/bin/env bash

basecalls=$(find -L ../data -type d -name "BaseCalls")
flowcell=$(find -L ../data -type d -name "flowcell")

./bcl2fastq \
-i ${basecalls} \
-R /root/capsule/data/flowcell/ \
-o ${flowcell} \
--ignore-missing-bcls \
--ignore-missing-filter \
--ignore-missing-positions \
--ignore-missing-controls \
-r ${num_process}

