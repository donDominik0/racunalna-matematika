%% ZADATAK 2.4. (FUNKCIJA)
function dx = odesys1(t,x)
A = [0 1 0;0 0 1;-50 -100 -50];
B = [0;0;1];
u = my_heaviside(t-10) - my_heaviside(t-30);
dx = A*x+B*u;