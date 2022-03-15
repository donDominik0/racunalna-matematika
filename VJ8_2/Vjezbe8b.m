%% Zadatak 2.5
t0 = 0;
tf = 3;
x0 = [0;0;0];
[T,X] = ode45(@elmech,[t0 tf], x0);

subplot(2,1,1)
plot(T,X(:,1),'LineWidth',2)
xlabel('t [s]'),ylabel('q [rad]')

subplot(2,1,2)
plot(T,X(:,3), 'LineWIdth', 2)
xlabel('t [s]'), ylabel('i_a [A]')
ylim([0 3])

%% zadatak 2.6
x0 = -1:0.5:1;
for i = 1:length(x0)
    for j = 1:length(x0)
        [T, X] = ode15s(@duff, [0 10],[x0(i) x0(j)]);
        plot(X(:,1),X(:,2),'b'), xlabel('y'), ylabel('dy/dt')
        hold on
    end
end
        
       