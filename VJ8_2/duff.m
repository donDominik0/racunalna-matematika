%% Funkcija 2.6
function dx = duff(t,x)
dx = zeros(2,1);

a = 1;
b = -1;
d = 0.2;

dx(1) = x(2)
dx(2) = -a*x(1)^3-b*x(1)-d*x(2);
