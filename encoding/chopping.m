function [ B ] = chopping()
% B is a cell where each row is a block starts with an address

global DNA address_17
B = {};
for i = 1: ceil(length(DNA)/984)
    m = min(i*984 ,length(DNA));
    B{i} = [address(i,:) DNA(i*984 - 983 : m)];
end
end


