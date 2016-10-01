function [ D ] = base642DNA( s )
%   s is a base64 string
%   D is a DNA string
D = '';
for i = 1: floor(length(s)/7)
    T = s((i*7 - 6): i*7);
    L = base642bi(T(7));
    
    T_1 = base642balance( T(1) );
    T_2 = [base642bi(T(2)) L(1:2)];
    psi_ = psi_function( T_2 , T_1 );
    D = [D psi_];
    
    T_1 = base642balance( T(3) );
    T_2 = [base642bi(T(4)) L(3:4)];
    psi_ = psi_function( T_2 , T_1 );
    D = [D psi_];
    
    T_1 = base642balance( T(5) );
    T_2 = [base642bi(T(6)) L(5:6)];
    psi_ = psi_function( T_2 , T_1 );    
    D = [D psi_];
end

end

