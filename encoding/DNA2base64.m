function [ s ] = DNA2base64( D )
%   s is a base64 string
%   D is a DNA string
s = '';
for i = 1: floor(length(D)/24)
    T = D((i*24 - 23): i*24);
    [A , B] = inverse_psi_function(T);
    L = [A(7:8) A(15:16) A(23:24)];
    
    A_1 = balance2base64( B(1:8) );
    A_3 = balance2base64( B(9:16) );
    A_5 = balance2base64( B(17:24) );
    
    A_2 = bi2base64( A(1:6) );
    A_4 = bi2base64( A(9:14) );
    A_6 = bi2base64( A(17:22) );
    
    A_7 = bi2base64( L );
    
    s = [s A_1 A_2 A_3 A_4 A_5 A_6 A_7];
end

end