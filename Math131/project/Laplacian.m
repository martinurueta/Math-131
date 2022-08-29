function A = Laplacian(N)

A = diag(-4 * ones (N * N, 1));

%informs you what location to put 1 in
for i = 1:N
    for j= 1:N
        %check for boundaries left or right
        %check left wall 
        if i==1
            L = (N-1) + (j-1) * N;
            R = (i+1) + (j-1) * N;
        %check right wall 
        elseif i==N
                R = 2 + (j-1) * N;
                L= (i-1) + (j-1) * N;
            %neither wall
            else
                L = (i-1) + (j-1) * N;
                R = (i+1) + (j-1) * N;
        end
            %top or bottom
            if (j==1) % bottom
                B= i + (N-2) * N;
                T = i + j * N;
            elseif j == N
                B = i + (j -2) * N;
                T = i + N;                    
            else
                B = i + (j -2);
                T = i + j * N;
            end
            I = i + (j - 1) * N;
            A(I, R) = 1;
            A(I, L) = 1;
            A(I, B) = 1;
            A(I, T) = 1;
    end
end
end