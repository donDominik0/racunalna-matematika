function suma = suma(c, xk)

global m

suma = 0;
for i = 1:m
    suma = suma + c(1:m+1)*exp(-(c(m+2:2*m+1)*xk + c(2*m+2:m+2)).^2);
end