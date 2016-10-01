clc
clear all
clearvars -global

%%


global balanced_8 symbol a_0 a_1 n_h k_h DNA address_17 blocks_17
load('variables/balanced_8.mat');
load('variables/symbol.mat');
load('variables/a_0.mat');
load('variables/a_1.mat');
load('variables/n_h.mat');
load('variables/k_h.mat');
load('variables/DNA.mat');
load('variables/address_17.mat');
load('variables/blocks_17.mat');

load('variables/kane_64.mat');
load('variables/smile_64.mat');


%test_pasting(blocks_17);

%{
%%design 17 addresses
%%first 15 are for kane, 1 common, 1 for smile :)
text_64 = [kane_64 smile_64];
DNA = base642DNA(text_64);

A = labeling_17();
blocks = chopping();



%global n W d

%% set variables
n = 8;
W = [3 4 5];
d = 3;

a_1 = [1 0 0 0 0 0 0 0];
V_1 = cyclic_ball(a_1);
A_1 = zeros(length(V_1) , length(V_1));
constraints = {'weight'};
[V_1, A_1] = filter_graph(V_1, A_1, constraints);

a_2 = [0 1 1 1 1 1 1 1];
V_2 = cyclic_ball(a_2);
A_2 = zeros(length(V_2) , length(V_2));
constraints = {'weight'};
[V_2, A_2] = filter_graph(V_2, A_2, constraints);

X = intersect(V_1,V_2,'rows');

%% image data
imdata = imread('kane.jpg');
J = imresize(imdata,0.1);
%[IND,map] = rgb2ind(J,4);
%new = ind2rgb(IND,map);
imagesc(J)
%colormap(map)
imwrite(J,'kane_bad.jpg')

%% initialize graph
%V is the label for each vertex
%A is the adjacency matrix

V = de2bi(0:2^n - 1);
A = zeros(2^n , 2^n);
S = zeros(2^n , 1);
for i = 1: 2^n
    S(i) = cyclic_ball(V(i,:));
end


%% filter graph
constraints = {'weight' 'distance'};
[V, A] = filter_graph(V, A, constraints);

MC = maximalCliques( A, 'v2' );
S = max(sum(MC,1))

%% find largest code
%}