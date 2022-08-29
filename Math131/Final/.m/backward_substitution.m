function x = backward_substitution(U,f)
%  BACKWARD_SUBSTITUTION Brief summary of this function.
% 
% Detailed explanation of this function.
% backward substitution for an upper triangular matrix
 n=size(U,1);
 x=zeros(n,1);
 x(n)=f(n)/U(n,n);
 for i=2:n
     k= n- (i-1);
     c=0;
     for p = k+1:n
         c = c +U(k,p)*x(p);
     end
     x(k) = (f(k)-c)/U(k,k);
 end
end