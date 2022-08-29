A = [-1 0 0; 2 6 1; 2 0 3];
b = [-1;1;1];
[U,f] = gaussian_elimination(A,b);
x = backward_substitution(U,f);