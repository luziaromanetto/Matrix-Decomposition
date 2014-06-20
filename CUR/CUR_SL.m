function [C I] = CUR_SL(X, k)
% Columns selections based on the statistical leverage
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
    [U S V] = svds(X,k);
    
    for i=1:m
        pi(i) = (1/k) *norm( V(i,:) ,2 );
    end
    
    [C I] = datasample(X,k,pi);
end