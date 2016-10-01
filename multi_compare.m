function [ aln ] = multi_compare(ref_number , positions)
%   block number is given
%   positions are given

%%  set path
%base_path = 'C:\Users\Hossein\Box Sync\';
base_path = 'C:\Users\tbtbyzd2\Box Sync\';
ref_file = strcat( base_path , 'DNA_project_2\lab_data\ref.fasta' );

%%  refs
refs = fastaread(ref_file);
ref = refs(ref_number);

%%  reads
reads = {};
for i = 1 : length(positions)
    position = positions{i};
    name = strcat('b',num2str(ref_number),'p',num2str(position));
    dir = strcat('output\',name);
    T = fastaread(strcat(dir,'\cns.fasta'));
    reads{end+1} = T.Sequence;
end
%reads{end+1} = ref.Sequence; 

%%  MSA
aln = msa( reads );

%%  save data
dir = 'output\aln';
fid = fopen(strcat(dir,'\b',num2str(ref_number),'.txt'),'wt');
for i = 1 : length(positions)
    fprintf(fid, strcat(aln(i,:) , '\n'));
end
fprintf(fid, '\n \n');
fprintf(fid, ref.Sequence);
fclose(fid);
end

