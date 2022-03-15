function p = func1(x,N)

p = 1;
for k = 1:N
    p = p*(1-(4*x^2)/(pi^2*(2*k-1)^2));
end
end

