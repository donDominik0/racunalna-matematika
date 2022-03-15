%% 1
xk = [0 1 2 7 11 15 20 25];
yk = [14.02 14.47 14.82 14.09 15.29 15.42 15.51 17.03];
M = spline(xk, yk)
c = M.coefs'*[0;0;0;0;0;1;0];
polyval(c, 2)
%% 2
clear all
close all
clc

s=tf("s");
Gs=36.287/(750000*s^2+4967.75*s+5.745);
Gs=zpk(36.287/(750000*s^2+4967.75*s+5.745));
Gmp=tf([5],[10 1]);

Gp=Gs*Gmp;

t1=1/0.005131;
t2=1/0.001493;
t3=1/0.1;
brojnik=2.4191e-05/(0.005131*0.001493*0.1);
Gp=zpk(brojnik/((t1*s+1)*(t2*s+1)*(t3*s+1)));

Kp=1;
Ti_30=t2;
Gpi_30=Kp*((Ti_30*s+1)/(Ti_30*s));
Go_30=minreal(Gp*Gpi_30)

bode(Go_30)

%%

xk=[0 1.7 3.4 5.1 6.8 8.5 10.2 11.9 13.6]';
yk=[0 1.76 14.96 10.23 16.59 16.44 19.24 20.5 22.28]';
V=[xk sqrt(xk) exp(-0.5*xk) sin(3*xk) xk.^0];
c=V\yk
%%
t0=0;
tf=15;
[T,X]=ode45(@diff2,[t0:10e-3:tf],[0;0;0]);
subplot(2,1,1)
plot(T,X(:,1),'b')
xlabel('t')
ylabel('y(t)')
subplot(2,1,2)
plot(T,X(:,2),'k')
xlabel('t')
ylabel('z(t)')
%%
t0 = 0;
tf = 10;
x0 = [0;0;0];
[T,X] = ode45(@odesys45,[t0:1e-3:tf],x0);
for i = 1:length(T)
    if T(i,1) == 6.0000
        y6 = X(i,1)
        z6 = X(i,3)
    end
end
figure
subplot(2,1,1)
plot(T,X(:,1),'b')
subplot(2,1,2)
plot(T,X(:,3),'k')
