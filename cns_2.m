function [ consensus ] = cns_2( aln )
%   find the consensus

%%  cns
consensus = seqconsensus(aln,'Alphabet', 'NT', 'Gaps', 'all');

%%  remove gaps
consensus = regexprep(consensus,'[-]','');
end
