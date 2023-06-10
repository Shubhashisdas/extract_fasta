# extract_fasta
__extract_fasta__ is a very easy tool for fasta file(s) extraction from another fasta file.Run this tool within this directory by bash

# Dependencies

1. samtools
dependency samtools should be installed in /usr/local/bin/samtools 

otherwise you have to edit the path in the perl_script2.pl 

# Usage

```
sh extract_fasta.sh -q query_id.txt -f sequence.fasta 
```

make sure that your sequence.fasta file is 
```
>fasta_01
AATGCTATGTGACATATGACTCCTTCGAACAGATTCTGGTTTATCAGACTTATAACTCCT
GGTACTTAGTATTGCGTGACTAGATACAAGCAAGTATCAAAACTACAATCAACTGTTAAC
```

and your query id is "fasta_01"

This tool can not read the fasta file that have 
```
>fasta_01|genename
AATGCTATGTGACATATGACTCCTTCGAACAGATTCTGGTTTATCAGACTTATAACTCCT
GGTACTTAGTATTGCGTGACTAGATACAAGCAAGTATCAAAACTACAATCAACTGTTAAC
```
and your query id is "fasta_01"


although it is a nice tool to make your job easy

we will improve it. 
