#!/usr/bin/perl
open(POSITIONS,"result_02.txt");
while(<POSITIONS>){
    chomp;
    my ($seqName,$begin,$end) = split(/\s/);
    open(SAMTOOLS,"/usr/local/bin/samtools faidx fasta_file.txt $seqName:$begin-$end |");
    while(my $line = <SAMTOOLS>){
    print $line;
    }
    close(SAMTOOLS);
}
close(POSITIONS);
