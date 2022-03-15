%% Zadatak 2.6. (funkcija)
function F=approxfun(c,x)

F = (c(1)+c(2)*x+c(3)*x.^2+c(4)*x.^3)./(c(5)+c(6)*x+c(7)*x.^2+c(8)*x.^3);