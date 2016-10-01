function [D I S ] = create_plot( alignment ,tt)
%   alignment

%   delition, insertion, substitution
D = [-20];%    red
I = [-20];%    green
S = [-20];%    black
for i = 1 : length(alignment)
    if strcmp(alignment(1,i) , '-')
        I(end+1) = i;
    elseif strcmp(alignment(3,i) , '-')
        D(end+1) = i;
    elseif ~strcmp(alignment(1,i) , alignment(3,i))
        S(end+1) = i;
    end
end

%   create delition
figure
stem(D, ones(1, length(D)), 'filled');

hold on;

%   create insertion and substitution
stem(I, -ones(1, length(I)) , 'c', 'filled');
stem(S, zeros(1, length(S)), 'm', 'filled');
%   add a legend
legend(strcat('#Delition = ', num2str(length(D) -1 )),...
       strcat('#Insertion = ', num2str(length(I) -1 )),...
       strcat('#Substitution = ', num2str(length(S) -1 )),...
               'Location', 'SouthWest');

%   set axis
xlim([-10 length(alignment)+10]);
ylim([-1.5 1.5]);

%%  title
title(tt);
%axis([-10 length(alignment)+10 -2 2])
set(gca,'YTick',[],'YTickLabel', []);

end

