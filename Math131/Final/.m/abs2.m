function [t, w, h] = abs2(f, a, b, alpha, n)
%  ABS2 
h=(b-a)/n;
t=a:h:b;
w=zeros(1,length(t));
w(1)=alpha;
k1=h*f(t(1),w(1));
k2=h*f(t(1)+h,w(1)+k1);
w(2)=w(1)+1/2*(k1+k2);
for i=2:length(t)-1   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
w(i+1)=w(i)+(3/2)*h*f(t(i),w(i))-.5*h*f(t(i-1),w(i-1));
end
end