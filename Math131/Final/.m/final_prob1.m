%part a
f = @(x) (x + 1 - 2 * sin(pi * x));
fx = [-2:.1:2];
y = f(fx);



plot(fx,y,'--v','LineWidth', 1);
xL = xlim;
yL = ylim;
line([0 0], yL);  %x-axis
line(xL, [0 0]);  %y-axis
title(' Root Finding Problem');
legend('f(x)');
xlabel('x');
ylabel('y');
%part b
grid on;
%ylim([-0.5 0.5]) %to check the roots closer
xlim([-2 2])

%part b
tol = 1 * 10^(-4);
N = 100;
a = -1.25;
b = -0.75;
bisection_method(f,a,b,tol,N);
%part c
x0 = -1.25;
x1 = -0.75;
fixed_point_iteration(f,x0,x1,tol,N);