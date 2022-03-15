%% Funkcija 2.5
function dx = elmech(t,x)
dx = zeros(3,1);
J = 0.923;
B = 1.02;
m = 5.5;
g = 9.81;
l = 0.5;
La = 9.6e-3;
Ra = 2.3;
Kv = 0.3;
Kt = Kv;
N = 10.0;
ua = 5;

dx(1) = x(2);
dx(2) = (-m*g*l*sin(x(1))-B*x(2)+N*Kt*x(3))/J;
dx(3) = (-Kv*N*x(2)-Ra*x(3)+ua)/La;
