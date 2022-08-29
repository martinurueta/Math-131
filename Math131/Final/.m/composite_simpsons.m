function I = composite_simpsons(f,a,b,n)
%  COMPOSITE_SIMPSONS 
h = (b-a) / n;
if rem(n,2) == 1
end
so = 0;
se = 0;
for k = 1: 1 : n-1
    x(k) = a + k * h;
    y(k) = f(x(k));
    if rem(k,2) == 1
        so = so + y(k);
    else
        se = se + y(k);
    end
end
I = h/3 * (f(a) + f(b) + 4 * so + 2 * se);
    
    
end