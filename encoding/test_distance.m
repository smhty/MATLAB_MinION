function [ D I ] = test_distance(B , A)
% B is a DNA string
% A is the address matrix
% D is the distance vector
% I is the index of the address gives that distance
[n , m] = size(A);

for i = 1: length(B)-m+1
    T = B(i: i+m-1);
    D(i) = sum(T ~= A(1,:));
    I(i) = 1;
    for j = 2 : n
        if(sum(T ~= A(j,:)) < D(i))
            D(i) = sum(T ~= A(j,:));
            I(i) = j;
        end
    end
end
end