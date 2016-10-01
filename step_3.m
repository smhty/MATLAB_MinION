function [ prefix] = step_3( ref_number , position , l)
%   block number is given
%   position is given
%   l is the length of steps for step_2

%%  set path
%base_path = 'C:\Users\Hossein\Box Sync\';
base_path = 'C:\Users\tbtbyzd2\Box Sync\';
ref_file = strcat( base_path , 'DNA_project_2\lab_data\ref.fasta' );
%sam_file = strcat( base_path , 'DNA_project_2\analyze\nanopore_gblock\ideal\bwa.sam' );
sam_file = strcat( base_path , 'DNA_project_2\analyze\nanopore_gblock\ideal\bwag2.sam' );

%%  find ref
refs = fastaread(ref_file);
ref = refs(ref_number);

%%  find address (prefix)
prefix = ref.Sequence(1:16);

%%  loop
for i = 1 : length(position)
    %%  sam filter
    reads = sam_filter_2( sam_file , position(i) , ref.Header , prefix);
    if length(reads) > 0    
        %%  MSA
        aln = msa( reads );
            
            %%  apply one of these
            %%  step_2 and local cns algorithm
            prefix = step_2( aln , l);

            %%  CNS
            %prefix = cns(aln);
    end
end

%%  name and directory
name = strcat('b',num2str(ref_number),'p',num2str(position));
dir = strcat('output\',name);
mkdir(dir);

%%  check that reads are not empty
if length(reads) > 0
    %%  save prefix
    fastawrite(strcat(dir,'\cnss2l',num2str(l),'.fasta'), name, prefix);

    %%  alignment
    [~ , alignment] = compare(ref.Sequence, prefix);
    fid = fopen(strcat(dir,'\alns2l',num2str(l),'.txt'),'wt');
    fprintf(fid, alignment(1,:));
    fprintf(fid, '\n');
    fprintf(fid, alignment(2,:));
    fprintf(fid, '\n');
    fprintf(fid, alignment(3,:));
    fclose(fid);

    %%  plot
    create_plot(alignment , name);
    savefig(strcat(dir,'\plots2l',num2str(l),'.fig'));
end
end

