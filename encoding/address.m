function [ A ] = address(x)
% x is abinary input of length 12
% A is the address 
global a_0 a_1 n_h k_h

if(x(end) == 0)
    c_1 = a_0;
else
    c_1 = a_1;
end

data = x(1:end-1);
encData = encode(data,n_h,k_h,'hamming/binary');
c_3 = encData;
c_3(end+1) = mod(sum(c_3),2);

A = psi_function(c_3,c_1);
end
