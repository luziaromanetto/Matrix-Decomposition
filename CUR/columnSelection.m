function [columns] = columnSelection(A, k)
% function [A labels columns] = main(dataset, k, print )
% Input 'A' is the data matrix
% Input 'k'is the number of required columns.
% 
% Return in 'columns' the index of the selected columns.
%
% Luzia de Menezes Romanetto <luziaromanetto@gmail.com>
% Luis Gustavo Nonato <lgustavo.nonato@gmail.com>
%
% Last update: 09/Jun/2014
    [n m]=size(A);
    [U S V] = svds(A,k);
    
    for i=1:m
        pi(i) = (1/k) *norm( V(i,:) ,2 );
    end
    
    for i=1:k
       [Y(i) I(i)]=max(pi);
       pi( I(i) )=0;
    end
   
    columns = I;
end