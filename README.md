[![Code Ocean Logo](images/CO_logo_135x72.png)](http://codeocean.com/product)

<hr>
  
##  BCL2FastQ

 

## Input

- Searches your **data** folder for the alignment file in .bam and .bam.bai format. 

## Usage

This capsule requires alignment files that are position sorted and indexed bam format. When you supply alignment files, the capsule will return normalized according to the features on App Panel selected.

In the case of one. 
 - bamFiles
   - SampleA.bam
   - SampleA.bam.bai

In the case of many.
 - bamFiles
   - SampleA.bam
   - SampleA.bam.bai
   - SampleB.bam
   - SampleB.bam.bai
   - SampleC.bam
   - SampleC.bam.bai

Blacklist (if any)
   - blacklist.bed

## Output

In your results folder you will find the bigWig file with normalizations applied.

In the case of one.

   - Results 
      - SampleA.bw

In the case of many.

   - Results 
      - SampleA.bw
      - SampleB.bw
      - SampleC.bw

      
## Parameters

- Number of Threads, if not utilized will automatically use all available.
- Bin Size.
- Any Chromosomes you wish to ignore during normalization. Default is chrX.
- Choose a Normalization Technique from the list of choices.
- Choose the version of genome your alignment file was generated from.
- Determinate nucleosome position (if MNase-Seq) 
- Usage of Offset
- Emphasis on reads on the Forward or Reverse Strand.
- Region of the Genome to focus.
- Blacklisted Regions (if any)
- Exact scaling
- Skip Non Covered Regions
- Smooth length
- Extend Reads
- Ignore Duplicate Reads
- Center Reads
- Sam Field Include Flag
- Sam Field Exclude Flag


## Source

https://deeptools.readthedocs.io/en/develop/content/tools/bamCoverage.html

[Code Ocean](https://codeocean.com/) is a cloud-based computational platform that aims to make it easy for researchers to share, discover, and run code.<br /><br />
[![Code Ocean Logo](images/CO_logo_68x36.png)](https://www.codeocean.com)
