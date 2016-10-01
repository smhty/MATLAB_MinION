function [ error ] = seq_error( seq , ref )
%   ***
%   seq and ref are given

%%  initialize
error = '.';
%%  loop
for i = 2 : length(seq)
    if ~strcmp(seq(i) , ref(i))
        error(end+1) = '*';
    else
        error(end+1) = ' ';
    end
    
end
end