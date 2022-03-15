%% VJEŽBE 8:DIFERENCIJALNE JEDNADŽBE (1. DIO)
%% Zadatak 2.1.
A = [0,1;-1.5,-1.5];
x0 = [1;0];
t = 0:1e-3:10;
x = zeros(size(A,1),length(t));
for i = 1:length(t)
    x(:,i) = expm(A*t(i))*x0;
end
plot(t,x,'LineWidth',2)
xlabel('t')
ylabel('x')
legend('x_1','x_2')

%% Zadatak 2.2.
A = [0,1;-1.5,-1.5];
x0 = [1;0];
t = 0:1e-3:10;
x = zeros(size(A,1),length(t));
% N = 100;
% for i = 1:length(t)
%     At = t(i)*A;
%     s = eye(size(A));
%     suma = eye(size(A));
%     for k = 1:N
%         s = s*At/k
%         suma = suma + s;
%         x(:,i) = suma*x0;
%     end
% end
for i = 1:length(t)
    At = t(i)*A;
    s = eye(size(A));
    suma = eye(size(A));
    k = 1;
    while norm(suma+s,1)~=norm(suma,1)
        s = s*At/k;
        suma = suma + s;
        x(:,i) = suma*x0;
        k = k + 1;
    end
end
plot(t,x,'LineWidth',2)
xlabel('t')
ylabel('x')
legend('x_1','x_2')

%% Zadatak 2.3.
[T,X] = my_euler(@sys1,[0 5],1,1e-2);
%ya = dsolve('Dy=-t*y','y(0)=1','t')
ya = exp(-T.^2/2);
figure(1)
plot(T,ya,T,X,'--r','LineWidth',2)
xlabel('t')
ylabel('y(t)')
legend('Egzaktno','Euler')
figure(2)
semilogy(T,abs(ya-X))

%% Zadatak 2.4.
t0 = 0;
tf = 50;
x0 = [0;0;0];
[T,X] = ode23(@odesys1,[t0:1e-3:tf],x0);
T
u = my_heaviside(T-10) - my_heaviside(T-30);
subplot(2,1,1)
plot(T,u,'LineWidth',2)
ylabel('u')
axis([0,50,-1.5,1.5])
subplot(2,1,2)
plot(T,X(:,1),T,X(:,2),T,X(:,3),'LineWidth',2)
ylabel('y,dy/dt,d^2y/dt^2')
xlabel('t')
axis([0,50,-0.03,0.03])






