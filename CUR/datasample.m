function [D I] = datasample(data,k,W)
% Sample columns data 
    N = length(data);

    if (length(W)~=N)
        Y = false;
        I = false;
    end
    
    X = 1:N';
    
    for i=1:k
        
        n = length(X);
        pos = randsample(n,1, true,W(X));
        
        I(i)=X(pos);
        
        Z = X;
        X = zeros((n-1),1);
        
        if( pos > 1 )
            X(1:pos-1)=Z(1:pos-1);
        end
        if( pos < n ) 
            X(pos:n-1)=Z(pos+1:n);
        end
        
    end
    
    D = data(:,I);
end