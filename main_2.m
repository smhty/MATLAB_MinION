clc
clear all
clearvars -global
%%  set length of steps
l = 10;
%%  ref_number and position
r = [2];
p = {};
p{end+1} = [16 30 50];
%p{end+1} = [8];
%p{end+1} = [16];


for i = 1 : length(r)
    for j = 1 : length(p)
        aln = step_1( r(i) , p{j});
        %aln = step_3( r(i) , p{j},l);
    end
end
%{
for i = 1 : length(r)
    multi_compare(r(i) , p);
end
%}