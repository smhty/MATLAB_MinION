function [ b ] = base642bi( s )
%   b is a binary n*6 matrix
%   s is the given symbol or series of symbols
global symbol

b = [];
num = (0:63);
for i = 1: length(s)
    index = find(symbol == s(i));
    n = num(index);
    b = [b ; de2bi(n,6)];
end

end

