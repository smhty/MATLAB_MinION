function [ b ] = base642balance( s )
%   b is a binary of length 8
%   s is the given symbol

global balanced_8 symbol

index = find(symbol == s);
b = balanced_8 (index, :);

end
