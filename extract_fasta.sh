while getopts f:q: flag
do
    case "${flag}" in
        f) fastafile=${OPTARG};;
        q) query=${OPTARG};;
    esac
done

value=`cat $fastafile`  
echo "$value" > fasta_file.txt


value=`cat $query`  
echo "$value" > result_02.txt

perl perl_script2.pl 2>&1 | tee output.fasta


rm fasta_file.txt result_02.txt fasta_file.txt.fai

#sh extract_fasta.sh -q Trinity_of_interest_tab.txt -f Trinity_bg_62.fasta

 

