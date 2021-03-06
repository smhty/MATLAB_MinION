function [ D ] = flip_AG( B )
%   B is a DNA block
%   A maps to T, G to C and vice versa
%   D is the output string
D = B;
for i = 1: length(B)
    if strcmp(B(i), 'A') == 1
        D(i) = 'G';
    elseif strcmp(B(i), 'G') == 1
        D(i) = 'A';
    elseif strcmp(B(i), 'T') == 1
        D(i) = 'C';
    else
        D(i) = 'T';
    end 
end


end