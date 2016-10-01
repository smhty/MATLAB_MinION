function [ reads ] = sam_filter( sam_file , position , reference_name  )
%   sam_file
%   reads aligned to reference_name
%   start is less than or equal to position
%   chopp the first '???S' in the cigar string

%%  sam file
sam = samread(sam_file);

%%  reads
reads = {};

%%  filter
for i = 1 : length(sam)
    if strcmp(sam(i).ReferenceName , reference_name) && sam(i).Position <= position
        S = sam(i).Sequence;
        C = sam(i).CigarString;
        %%  cutting
        T = read_chop(S,C);
        if length(T) >= 1
            reads{end+1} = T;
        end
    end
end
end

