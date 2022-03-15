%% OSNOVNE OPERACIJE MATRICNE ALGEBRE

% Zadatak 1.1.
M1 = [1 0 -17;102 3 10;-5 0 21]
M2 = [7 8 -3i;-2-i 0 -5;13 1 5+7i;10 -11 12]

% Zadatak 1.2.
A11 = diag([1 2 3]);
A12 = zeros(3,2);
A21 = ones(2,3);
A22 = eye(2);
A = [A11 A12;A21 A22]

% Zadatak 1.3.
[m,n] = size(M1);
for i = 1:m
    for j = 1:n
        M1T(j,i) =M1(i,j);
    end
end
M1'
transpose(M1)

M2.'
transpose(M2)

M2'
ctranspose(M2)

% Zadatak 1.4.
A = [0 3 5;-7 0 3];
B = [1 -1 4;2 7 -9];
C = A + B

% Zadatak 1.5.
5*C

% Zadatak 1.6.
A = [0 3 5;-7 0 3];
B = [1 -1 4;2 7 -9]';
D = A*B
[m,n] = size(A);
p = size(B,2);
C = zeros(m,p);
for i = 1:m
    for j = 1:p
        for k = 1:n
            C(i,j) = C(i,j) + A(i,k)*B(k,j);
        end
    end
end

% Zadatak 1.7.
n = 5;
i = 0;
while i <= n
    Di = D^i;
    fprintf('D^%d je\n',i)
    fprintf('%14.2f %14.2f\n',Di')
    i = i + 1;
end

% Zadatak 1.8.
v = [8 4 3];
w = [-2 1 4];
dot(v,w)

% Zadatak 1.9.
v = [-7 2 8];
w = [3.5 -1 -4];
cross(v,w)

% Zadatak 1.10.
F = [2 -1 1];
d = [3 -2 4];
W = dot(F,d)

% Zadatak 1.11.
F = [8 5 7];
r = [1 3 9];
M = cross(r,F)

%% DETERMINANTA, RANG, INVERZ I TRAG MATRICE

% Zadatak 2.1.
A = [25.3 100 45;11.9 12.8 99;7.1 4.2 5];
determinanta = det(A)
rank(A)
inv(A)
A^-1
A\eye(size(A))
trace(A)

% Zadatak 2.2.
M1 = [1 0 1;0 1 0];
g_inv(M1)
M2 = [1 3;2 4;3 5];
g_inv(M2)
M3 = [4 3;8 6];
g_inv(M3)

% Zadatak 2.3.
A = [0 -1 0;0 0 -1;0 0 0];
B = [1 2;2 1;3 3];
X = inv(eye(size(A))-A)*B

%% SUSTAVI LINEARNIH ALGEBARSKIH JEDNADŽBI

% Zadatak 3.1.
m1 = 2;
m2 = 4;
g = 9.81;
A = [m1 0 m2;0 m2 1;1 1 0];
b = [m1*g;m2*g;0];
x = A\b
Rjesenja = struct('Akceleracija_mase_1', x(1),'Akceleracija_mase_2', x(2),'Sila_u_uzetu', x(3))

%% SVOJSTVENE VRIJEDNOSTI I VEKTORI

% Zadatak 4.1.
A = [25.3 100 45;11.9 12.8 99;7.1 4.2 5];
[V,D] = eig(A)

% Zadatak 4.2.
norm(V(:,1))
norm(V(:,2))
norm(V(:,3))

% Zadatak 4.3.
p = poly(A)
roots(p)
polyvalm(p,A)

%% VEKTORSKE I MATRIČNE NORME

% Zadatak 5.1.
x = [-2 4 0 10];
A = [-2 0 0;1 0 0;5 -6 9];
Norme = [];
for i = [1 2 inf]
    Norme = [Norme; norm(x,i) norm(A,i)];
end








