%% VJEŽBE 7:APROKSIMACIJA I INTERPOLACIJA (2. DIO)
%% Zadatak 2.5.
xk = [1.2 2.8 4.3 5.4 6.8 7.9];
fk = [7.5 16.1 38.9 67.0 146.6 266.2];
%c=[a b]
f=@(c,x) c(1)*exp(c(2)*x);
c0 = [1 1];
c1 = lsqcurvefit(f,c0,xk,fk)
xv = xk(1):1e-2:xk(end);
ya = f(c1,xv);
plot(xk,fk,'o',xv,ya,'r')
xlabel('x')
ylabel('f(x)')
legend('Izmjereni podaci','Aproksimacijska funkcija','Location', 'NorthWest')

%% Zadatak 2.6.
x = -pi/2:1e-1:pi/2;
y = cos(x);
%c = [a1 a2 a3 a4 b1 b2 b3 b4]
c0 = [1 0 0 0 1 0 0 0];
opt = optimoptions('lsqcurvefit','Algorithm','levenberg-marquardt')
c = lsqcurvefit(@approxfun,c0,x,y,[],[],opt)
ya = approxfun(c,x);
plot(x,y,x,ya,'--r','LineWidth',2)
xlabel('x')
ylabel('f(x)')
legend('cos(x)','Padeova aproksimacija')

%% Zadatak 2.7.
xk = 0:5:55;
fk = [0.1 1.884 2.732 2.022 1.65 1.5838 -0.073 -0.002 -0.1122 0.106 1.5265 -0.6321];
p = polyfit(xk,fk,length(xk)-1);
xv = xk(1):1e-2:xk(end);
yp = polyval(p,xv);
ys = spline(xk,fk,xv);
yh = interp1(xk,fk,xv,'pchip');
plot(xk,fk,'*',xv,yp,'g',xv,ys,'r',xv,yh,'k')
xlabel('x')
ylabel('f(x)')
legend('Cvorovi','Polinom 11. stupnja','Kubicni splajn', 'Hermitova interpolacija')
s = spline(xk,fk)
s.coefs

%% Zadatak 2.8.
xk=-3:3;
fk=1./(1+xk.^2);
pl=lagrangeapprox(xk,fk)
xv=-3:1e-2:3;
plx=polyval(pl,xv);
plot(xk,fk,'*',xv,1./(1+xv.^2),'g',xv,plx,'r')
xlabel('x')
ylabel('f(x)')
legend('Cvorovi','1/(1+x^2)','Lagrangeova aproksimacija')
