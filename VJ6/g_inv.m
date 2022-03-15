function G_inv = g_inv(M)

[m,n] = size(M);
r = rank(M);

if r == n
    disp('Lijevi inverz je')
    G_inv = inv(M'*M)*M';
elseif r == m
    disp('Desni inverz je')
    G_inv = M'*inv(M*M');
else
    disp('Moore-Penrose pseudoinverz je')
    G_inv = pinv(M);
end
end

