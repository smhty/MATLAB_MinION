function [ D ] = flip_AT( B )
%   B is a DNA block
%   A maps to T, G to C and vice versa
%   D is the output string
D = B;
for i = 1: length(B)
    if strcmp(B(i), 'A') == 1
        D(i) = 'T';
    elseif strcmp(B(i), 'T') == 1
        D(i) = 'A';
    elseif strcmp(B(i), 'C') == 1
        D(i) = 'G';
    else
        D(i) = 'C';
    end 
end


end

