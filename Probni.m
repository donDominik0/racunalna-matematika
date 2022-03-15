%%
v = [];
for i = 1:4
    for j = 1:3
        v = [v,j^i];
    end
end
%%
p = [1 2 -2 -3 2 -1 5 1];
pd = p;
A = zeros(length(p)-1,4);
for i = 1:4
    pd = polyder(pd);
    A(i:length(p)-1,i) = pd(:);
end
%%
A = zeros(5,9);
A(:,1:2:end) = eye(5)
linspace(1,5,5)*A
%%
a = [1 2 3 4 5 6];
b = [1 2 3 4 5 6];
%SloziMatricu(a)
%%
x = 1:0.1:10;
y = -5:0.1:5;
[X,Y] = meshgrid(x,y);
f = log10(X).*Y.^3;
%%
A = [6 3;0 44;2 12;2 15]
[m,n] = size(A);
suma = 0;
x = 0;
for i=1:m
    for j=1:n
        x = A(i, j);
        if mod(x,2) == 0
            suma = suma+x;
        end
    end
end
suma
%%
v = [-3 2 45 0 676 6 34 10];
x = v(1);
y = v(1);
n = length(v);
i = 2;
while i <= n
    if v(i) < x
        x = v(i);
    end
    if v(i) > y
        y = v(i);
    end
    i = i+1;
end
x
y









