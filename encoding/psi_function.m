function [ DNA ] = psi_function( a , b )
% a and b are two binary strings of the same length
DNA = '';
for i = 1 : length(a)
    if a(i) == 0 && b(i) == 0
        DNA(end+1) = 'A';
    elseif a(i) == 0 && b(i) == 1
        DNA(end+1) = 'C';
    elseif a(i) == 1 && b(i) == 0
        DNA(end+1) = 'T';
    else
        DNA(end+1) = 'G';
    end
end

end

