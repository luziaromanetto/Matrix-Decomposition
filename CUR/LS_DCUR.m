function [W I]=LS_DCUR(X, k)
% Columns selections based on Simplex Volume Maximization
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
    [N M] = size(X);
    
    for j=1:M
        n(j)=log(norm(X(:,j),2));
        Phi(1,j) = n(j);
        Lambda(1,j) = n(j)^2;
        Psi(1,j)=0;
    end
    
    [a selected] = max(n);
    
    I(1)=selected;
    W = zeros(N,k);
    
    W(:,1) = X(:,selected);
    
    
    for i=2:k
       for j=1:M
          p(j) = log(norm(W(:,i-1)-X(:,j),2));
          
          Phi(i,j) = Phi(i-1,j)+p(j);
          Lambda(i,j) = Lambda(i-1,j) +p(j)^2;
          Psi(i,j)=Psi(i-1,j)+p(j)*Phi(i-1,j);
          
          value(j) = a*Phi(i,j)+Psi(i,j)-(i-1)/2*Lambda(i,j);
       end       
       
       [v selected] = max(value);
       
       I(i)=selected;
       W(:,i)=X(:,selected);       
    end

end