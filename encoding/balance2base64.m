function [ s ] = balance2base64( b )
%   b is a binary of length 8
%   s is the given symbol

global balanced_8 symbol

[~,index] = ismember(b,balanced_8,'rows');
s = symbol (index);

end


