
%%
M = [1 -2 -3;-5 -9 8;-9 5 8];
[n,m]=size(M);
i=1;
j=1;
while i<=n
    j=1;
    while j<=m
        if M(i,j)<0
            M(i,j)=0;
        end
        j=j+1;
    end
    i=i+1;
end
M
%%
A = [5 8 5 6;4 5 5 4;1 2 3 4;4 8 5 2];
A = A-diag(diag(A));
%%
A = [5 8 5 6;4 5 5 4;1 2 3 4;4 8 5 2];
k = 1;
while 1
    A(k, 1:(size(A,1)-k)) = 0;
    k = k + 1;
    if size(A,1)==k
        break
    end
end
A
%%
A = [1 -1 5 6;7 -8 5 2;1 -5 3 4;4 -8 -2 2];
x = [5 -7 6 -2 1];
b = [7 4 1 -4 -5];
[n,m] = size(A);
for i=1:n
    for j=1:m
        for k=1:size(x)
        y = (b+A(i,j)*x)*x(k)
        end
    end
end

















