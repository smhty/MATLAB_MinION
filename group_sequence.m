function [ group ] = group_sequence( seq , k )
%   group every k elements

%%  set spaces
line = ''; 

%%  loop
t = 0;
for i = 1 : length(seq)
    %%  increase t
    if(sum(ismember(['ATCG'] , seq(i)))) > 0
        t = t + 1;
    end
    %%  space or |
    if mod(t,k) == 1 && (sum(ismember(['ATCG'] , seq(i)))) > 0
        line = [line '('];
    else if mod(t,k) == 0 && (sum(ismember(['ATCG'] , seq(i)))) > 0
        line = [line ')'];
    else
         line = [line ' '];
    end
end
group = line;

end
