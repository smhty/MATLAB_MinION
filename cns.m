function [ consensus ] = cns( aln )
%   find the consensus

%%  cns
consensus = seqconsensus(aln,'Alphabet', 'NT', 'Gaps', 'noflanks');

%%  remove gaps
consensus = regexprep(consensus,'[-]','');
end

