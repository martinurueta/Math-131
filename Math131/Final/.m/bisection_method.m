function [c,n,err] = bisection_method(f,a,b,tol,N)
%  BISECTION_METHOD 
FA = f(a);
FB = f(b);
n = 0;
p = 0;
c = 0;
err = 0;
if (FA * FB) > 0 || a > b
    c = [];
    err = Inf;
    n  = 0;
else
    while (b - a) / 2 > tol && n < N
        p = (a + b) / 2;
        FP = f(p);
        if FP == 0
            break;
        else
            if (FA * FP) < 0
                b = p;
                FB = FP;
            elseif (FB * FP) < 0
                a = p;
                FA = FP;
            end
        end
        n = n + 1;
    end
    c = p;
    err = (b-a) / 2;
    disp(c);
    disp(n);
    disp(err);
end
end