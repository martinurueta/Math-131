function [y,t] = rk4(f,t0,tf,alpha,N)
%  RK4 
    h= (tf-t0)/N;
    t= [t0: h: tf]';
    y= [1:N]';
    for i=1:N
        y(i)=0;
    end
    y(1) = alpha;
    for i=1:N
        k1= h * f( t(i) , y(i) );
        k2= h * f( t(i) + (h/2) ,  y(i) + (1/2) * k1);
        k3= h * f( t(i) + (1/2) * h , y(i) + (1/2) *k2);
        k4= h * f( t(i) + h, y(i) + k3);
        y(1+i)= y(i) + ((k1 + 2 * k2 + 2 * k3 + k4)/6);
    end
end