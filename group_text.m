function [ data ] = group_text( file_path , k )
%   open file
%   group every k elements
%   save as

%%  read file
data = dataread('file', file_path, '%s', 'delimiter', '\n');

%%  set spaces
line = ''; 
%%  readd_ref
ref = data{end-2};

%%  loop
t = 0;
for i = 1 : length(ref)
    %%  increase t
    if(sum(ismember(['ATCG'] , ref(i)))) > 0
        t = t + 1;
    end
    %%  space or |
    if mod(t,k) == 1 && (sum(ismember(['ATCG'] , ref(i)))) > 0
        line = [line '('];
    else if mod(t,k) == 0 && (sum(ismember(['ATCG'] , ref(i)))) > 0
        line = [line ')'];
    else
         line = [line ' '];
    end
end
data{end-1} = line;

end

