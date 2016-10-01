function [ DNA ] = test_pasting(B)
% B is a cell where each row is a block starts with an address

DNA = '';
for i = 1: length(B)
    DNA = [DNA B{i}(17:end)];
end
end