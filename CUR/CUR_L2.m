function [ C I] = CUR_L2( X, k)
% Columns selections based on the Euclidean norm
%
% Input 'X' is the data matrix
% Input 'k'is the number of required columns.
% 
% Return in 'C' the selected columns.
% Return in 'I' the index of the selected columns.
%
% Luzia de Menezes Romanetto <luziaromanetto@gmail.com>
% Luis Gustavo Nonato <lgustavo.nonato@gmail.com>
%
% Last update: 19/Jun/2014
    [n m]=size(X);
    F = norm(X,2);
    for i=1:m
        P(i) = (norm(X(:,i),2)/F)^2;
    end

    
    [C I]=datasample(X,k,P);
end
