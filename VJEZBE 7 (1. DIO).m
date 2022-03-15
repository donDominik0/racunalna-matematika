%% VJEŽBE 7:APROKSIMACIJA I INTERPOLACIJA(1.DIO)
%% Zadatak 2.1.
d = 1e-2;
x = [-4/5:d:4/5]';
y = -x./sqrt(1-x.^2);
V = [x.^5 x.^3 x x.^0];
c = V\y
p = [c(1) 0 c(2) 0 c(3) c(4)];
px = polyval(p,x);
subplot(2,1,1)
plot(x,y,x,px,'--r','lineWidth',2)
xlabel('x')
ylabel('f(x)')
legend('-x/sqrt(1-x^2)','c_1x^5+c_2x^3+c_3x+c_4')
subplot(2,1,2)
semilogy(x,abs(px-y),'LineWidth',2)
xlabel('x')
ylabel('y(x)-p(x)')

%% Zadatak 2.2.
xk = [0:5]';
fk = [ 0 1 2 6 8 7]';
V = vander(xk);
c = V\fk
xv = 0:1e-2:5;
p = zeros(1,length(xv));
for i=1:length(c)
    p = c(i)*xv.^(length(c)-i) + p;
end
plot(xk,fk,'o', xv,p,'r')
xlabel('x')
ylabel('f(x)')
legend('Izmjereni podaci','Interpolacijski polinom','Location','NorthWest')

%% Zadatak 2.3.
xk = -3:3;
fk = [-0.2774 0.8958 -1.5651 3.4565 3.0601 4.8568 3.8982];
p1 = polyfit(xk,fk,1)
p3 = polyfit(xk,fk,3)
p5 = polyfit(xk,fk,5)
p6 = polyfit(xk,fk,6)
xv = -3:1e-2:3;
subplot(2,2,1)
plot(xk,fk,'o',xv,polyval(p1,xv))
xlabel('x')
ylabel('f(x)')
title('Polinom 1. stupnja')
subplot(2,2,2)
plot(xk,fk,'o',xv,polyval(p3,xv))
xlabel('x')
ylabel('f(x)')
title('Polinom 3. stupnja')
subplot(2,2,3)
plot(xk,fk,'o',xv,polyval(p5,xv))
xlabel('x')
ylabel('f(x)')
title('Polinom 5. stupnja')
subplot(2,2,4)
plot(xk,fk,'o',xv,polyval(p6,xv))
xlabel('x')
ylabel('f(x)')
title('Polinom 6. stupnja')
%% Zadatak 2.4.
xk = [1.2 2.8 4.3 5.4 6.8 7.9]';
fk = [7.5 16.1 38.9 67.0 146.6 266.2]';
A = [exp(xk) xk.*exp(-xk) ones(length(xk),1)];
c = A\fk
xv = 1.2:1e-2:7.9;
f = c(1)*exp(xv) + c(2)*xv.*exp(-xv) + c(3);
plot(xk,fk,'o',xv,f)
xlabel('x')
ylabel('f(x)')
legend('Izmjereni podaci','Aproksimacijska funkcija','Location','NorthWest')





