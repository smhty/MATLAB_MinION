function [ A ] = labeling_17()
% A is a 17*16 matrix, each row represents a matrix. 
% K1 K2 ... K15 ks S1

for i =1 : 15
    P = base642bi('K');
    S = fliplr(de2bi(i,6)); %%the last bit changes every time to swich from a_0 to a_1
    A(i,:) = address([P S]);
end
A(16,:) = address(base642bi('ks'));

P = base642bi('S');
S = fliplr(de2bi(1,6)); %%the last bit changes every time to swich from a_0 to a_1
A(17,:) = address([P S]);

end
