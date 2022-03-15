%% ZADATAK 2.3. (FUNKCIJA)
function [cin,ceq] = my_con(x)
cin(1) = 1.5 + x(1)*x(2) - x(1) - x(2);
cin(2) = -x(1)*x(2) - 10;
ceq = 0;
