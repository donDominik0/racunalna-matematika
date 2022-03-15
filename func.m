function M = func(N)

Mtemp = [size(N)];

for k = 1:N

    Mtemp = [Mtemp, k];

    M(k, Mtemp) = Mtemp;

end