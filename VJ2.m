%%
p = [4,-3,0,2,0,71]
p1 = polyval(p,1)
%%
x = 1:5
z = [1 2 6 8 7]
p2 = polyfit(x,z,3)
%p2_vrijednost =
plot(p2)
%%
r1 = 0.1;
g1 = sin(r1)
%%
r2 = 0.4
g2 = exp(r2) + log(r2) + asin(r2) - cos(r2) + tan(r2) + cot(r2) - log10(r2)*sin(r2) + (log2(r2))^3
%%
korak = 0.5
r3 = [0:korak:pi]
g3 = sin(r3)
plot(g3)
%%
kor = 0.7
r4 = [0:kor:pi]
g4 = sin(r4).*sin(r4) + cos(r4).*cos(r4)
%%
step = 1.21;
r5 = [1:step:2*pi];
g5 = tan(r5)./sin(r5)+log10(r5)+log(r5)
%%

