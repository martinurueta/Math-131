function [U,f] = gaussian_elimination(A,b)
%  GAUSSIAN_ELIMINATION 
% performs gaussian elimination on the augmented matrix [A,b], returning
% the upper-triangular matrix U (from A) and the updated vector f (from b)
o= size (A, 1);
n= size(A, 2)+1;
p= size(A, 2);
U= zeros(o, p);
t= zeros (o, n);
for row= 1 : o
    for col= 1 : n-1
        t(row, col) = A(row, col);
    end
    t(row, n) = b(row,1);
end
for col_1 = 1 : o-1
   for row = (col_1 + 1) :o
       if t(col_1, col_1) == 0
           i=1;
           while ((col_1+i)<o) && t(col_1+i, col_1)== 0
               if t(col_1 + 1, col_1) == 0
                   i = i+1
               end
           end
           c(1,:) = t(col_1,:);
           t(col_1,:) = t(col_1+i,:);
           t(col_1+1, :) = c(1,:);
       end
       if t(row, col_1) ~=0
           coeficient = (1/t(col_1,col_1))* t(row, col_1);
           C(1,:) = coeficient * t(col_1,:);
           t(row,:) = t(row,:)- C(1,:);
       end
   end
end
for col=1:p
    U(:,col) = t(:,col);
end
f = t(:,n);
end