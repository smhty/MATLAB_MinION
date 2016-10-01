function [ aln ] = msa( reads )
%   reads are given

%%  MSA
aln = multialign(reads,'terminalGapAdjust',true);
end

