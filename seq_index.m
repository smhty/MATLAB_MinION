function [ index ] = seq_index( seq )
%   ***
%   seq is given
%   index: 
%   0         1   ...
%   01234567890123...

%%  initialize
t = 0;
index = char(2, length(seq)+10);

%%  loop
for i = 1 : length(seq)
    %%  increase t
    if strcmp(seq(i) , ' ')
        index(2,i) = ' ';
    else
        t = t + 1;
        index(2,i) = num2str(mod(t,10));
        if ~mod(t,10)
            n = num2str(t/10);
            index(1,i:i+length(n)-1) = n;
        end
    end
end
end
