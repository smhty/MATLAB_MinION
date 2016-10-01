function [a, b] = inverse_psi_function( D )
% a and b are two binary vectors of the same length
% D is the DNA input string
a = zeros(1,length(D));
b = a;
for i = 1 : length(D)
    if strcmp(D(i) , 'A') == 1
        a(i) = 0;
        b(i) = 0;
    elseif strcmp(D(i) , 'C') == 1
        a(i) = 0;
        b(i) = 1;
    elseif strcmp(D(i) , 'T') == 1
        a(i) = 1;
        b(i) = 0;        
    else
        a(i) = 1;
        b(i) = 1;         
    end
end

end

