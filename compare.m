function [score , alignment] = compare( ref, cns )
%   ref
%   cns

%%  alignment
[score , alignment] = swalign(ref, cns);
end

