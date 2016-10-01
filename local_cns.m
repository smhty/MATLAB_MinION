function [ O ] = local_cns(msa,s , e)
%   msa is given
%   s: start flag
%   e: end flag
%   find the consensus (cns)


%%  read aln
[n ~] = size(msa);
T = {};
for i = 1 : n
    %%  remove gaps
    H = regexprep(msa(i,s:e),'[-]','');
    
    %%  check if it is empty
    if isempty(H) == 0
        T{end+1} = H;
    end
end
%%  set O
O = '';

%%  check if there are at least 3 sequences
if length(T) > 2
%%  MSA
    aln = multialign(T,'terminalGapAdjust',false);
    O = cns_2( aln );
end
end
