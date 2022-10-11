%метод Гаусса 
A = [ 1 1 2 1 0; 1 2 4 2 1; 2 3 8 4 2; 3 4 10 6 3 ];
n = size(A,1);
x = zeros(n,1); %нулевой столбец

%прямой ход
for i=1:n-1
    for j=i+1:n
        d = A(j,i)/A(i,i);
        A(j,:) = A(j,:) - d*A(i,:);
    end
end

%обратный ход
for i=n:-1:1
    summ = 0;
    for j=i:n
        summ = summ + A(i,j)*x(j,:);
        x(i,:) = (A(i,n+1) - summ)/A(i,i)
    end
end   
