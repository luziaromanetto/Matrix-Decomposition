function [ C U R residue] = CUR( X, k, method)

    if(method == 1)
    % CUR decomposition based on the Euclidean norm
        C = CUR_L2(X , k);
        R = CUR_L2(X', k)';
    elseif(method == 2)
    % CUR decomposition based on the statistical leverage
        C = CUR_SL(X , k);
        R = CUR_SL(X', k)';
    elseif(method == 3)
    % CUR decomposition based on Simplex Volume Maximization
        C = LS_DCUR(X , k);
        R = LS_DCUR(X', k)';
    end
    
    U = pinv(C)*X*pinv(R);
    
    residue = norm( X-C*U*R , 2);
end