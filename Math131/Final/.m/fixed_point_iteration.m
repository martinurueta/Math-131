function [c,n,error1,theerror1] = fixed_point_iteration(f,x0,x1,tol,N) %
%  FIXED_POINT_ITERATION 
    p1 = f(x1); % two initial approximations supplied
    p0 = f(x0);
    n = 0;
    % Divide with x until it intersects the x axis at third point
    for i = 1:N
        c = x1 - (p1 * (x1 - x0)) / (p1 - p0);
        error1 = abs(c - x1);
        if error1 < tol
            break;
        end
        x0 = x1;
        p0 = p1;
        x1 = c;
        p1 = f(c);
        n = n + 1;
        theerror1(n) = error1;
    end
    disp(c);
end