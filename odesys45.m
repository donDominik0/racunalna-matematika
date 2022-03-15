function dx = odesys45(t,x)
dx = zeros(3,1);
dx(1) = x(2);
dx(2) = (x(3)-t*x(1)-cos(x(1))*x(2))/(1+x(1));
dx(3) = exp(-2*t)-1-x(2);
end