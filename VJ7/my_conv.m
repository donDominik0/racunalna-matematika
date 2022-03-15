%% Zadatak 2.8. (funkcija)
function z=my_conv(u,v)
m=length(u);
n=length(v);
z=zeros(1,m+n-1);
V=[v zeros(1,m)];
for k=1:m+n-1
    for j=1:m
        if k-j+1>0
        z(k)=z(k)+u(j)*V(k-j+1);
        end
    end
end