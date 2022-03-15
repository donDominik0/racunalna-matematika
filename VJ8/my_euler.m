%% ZADATAK 2.3. (FUNKCIJA)
function [tout,xout]=my_euler(ODEsys,t_int,x0,tau)
t0 = t_int(1);
tf = t_int(2);
N = (tf-t0)/tau;
x = x0;
tout = zeros(N+1,1);
xout = zeros(N+1,size(x0,1));
for i = 1:N+1
    tout(i) = t0 + (i-1)*tau;
    t = tout(i);
    f = feval(ODEsys,t,x);
    x = x + tau*f;
    xout(i,:) = x';
end
    