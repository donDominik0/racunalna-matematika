%% Zadatak 2.8. (funkcija)
function p=lagrangeapprox(xk,fk)
n=length(xk);
p=0;
for k=1:n
    l=1;
    for i=1:n
        if i~=k
            l=my_conv(l,[1 -xk(i)])/(xk(k)-xk(i));
        end
    end
    p=p+fk(k)*l
end