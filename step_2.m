function [ cns] = step_2( msa , l)
%   l is the length of steps
%   msa is given
%   chop and find cns

%   initialize cns
cns = [];

%   msa dimension
[r c] = size(msa);

%   set steps
step = 1 : l : c;
step(end+1) = c;

%   loop
for i = 1: length(step) - 1
    %   set start and end
    s = step(i);
    e = step(i+1);
    
    %   find cns
    %tic
    cns = [cns local_cns(msa , s , e)];
    %toc
end
end