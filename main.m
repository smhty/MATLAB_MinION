clc
clear all
clearvars -global

%%  variables 
position = 1;
ref_number = 1;

%%  set path
%base_path = 'C:\Users\Hossein\Box Sync\';
base_path = 'C:\Users\tbtbyzd2\Box Sync\';
ref_file = strcat( base_path , 'DNA_project_2\lab_data\ref.fasta' );
sam_file = strcat( base_path , 'DNA_project_2\analyze\nanopore_gblock\ideal\bwa.sam' );

%%  refs
refs = fastaread(ref_file);
ref = refs(ref_number);

%%  sam filter
reads = sam_filter( sam_file , position , ref.Header );

%%  MSA
aln = msa( reads );

%%  CNS
cns = cns(aln);

%%  compare
[score , alignment] = compare(ref.Sequence, cns);
create_plot(alignment);