function [ cut_seq ] = read_chop(sequence,cigar)
%   sequence
%   cigar
%   find AS symbol in sequence
%   remove the first A symbols from sequence
%   modify it with prefix

%%  read cigar  
p = regexp(cigar, 'S', 'once');
c = str2num(cigar(1:p-1));

%%  cut
cut_seq = sequence(c+1 : end);

end

