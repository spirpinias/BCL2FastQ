[![Code Ocean Logo](images/CO_logo_135x72.png)](http://codeocean.com/product)

<hr>
  
##  BCL2FastQ

Illumina sequencing instruments generate per-cycle BCL basecall files as primary
sequencing output, but many downstream analysis applications use per-read FASTQ
files as input. bcl2fastq combines these per-cycle BCL files from a run and translates
them into FASTQ files. bcl2fastq can begin bcl conversion as soon as the first read has
been completely sequenced.

## Input

- Assumes your **data** folder is in the format described by page 4 of the documentation.

## Usage

This capsule requires a flowcell run.

## Output

In your results folder you will find generated reports, statistics, and sequencing files in .fastq.gz format.

      
## Parameters

- Number of Processors, if not utilized will automatically use all available.
- Ignore Missing BCL 
- Ignore Missing Filters
- Ignore Missing Positions
- Ignore Missing Controls
- Tiles 
- Minimum Read Length
- Mask Short Adapter Reads
- Adapter Stringency
- Write Fastq Reverse Complement
- Include Non-PF Clusters
- Create FASTQ Files for Index Reads
- Find Adapters with Sliding Window
- No BGZF Compression
- FASTQ Compression Level
- Barcode Mismatches
- No Lane Splitting

## Source

https://support.illumina.com/content/dam/illumina-support/documents/documentation/software_documentation/bcl2fastq/bcl2fastq_letterbooklet_15038058brpmi.pdf

[Code Ocean](https://codeocean.com/) is a cloud-based computational platform that aims to make it easy for researchers to share, discover, and run code.<br /><br />
[![Code Ocean Logo](images/CO_logo_68x36.png)](https://www.codeocean.com)
