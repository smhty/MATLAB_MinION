function [ s ] = bi2base64( b )
%   b is a binary n*6 matrix
%   s is the given symbol or series of symbols
global symbol
s=[];
num = (0:63);
for i =1 : size(b,1)
    n = bi2de(b(i,:));

    index = find(num == n);

    s = [s symbol(index)];
end
end
