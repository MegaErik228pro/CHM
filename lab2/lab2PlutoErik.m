X = [ 0.4 0.9 1.3 2 2.4 3 3.5 3.9 4 ];
Y = [ 1.1 2 2.5 3.1 4 5 5.1 6 7 ];
subplot(2,1,1)
plot(X,Y)
% линейная зависимость

f = the_method_of_smaller_squares(X, Y);
subplot(2,1,2)
plot(X,f(X))
% линейная зависимость

% X1 = [10 12 15 18 20 22 25 30 32 37];
% Y1 = [3 5 7 11 13 18 19 23 28 32];
% f1 = the_method_of_smaller_squares(X1, Y1);
% subplot(2,1,2)
% plot(X1,f1(X1))
% линейная зависимость

% X2=[-4 -3 -2 -1 0 1 2 3 4];
% Y2=[33 22 19 15 14 15 18 23 30];
% subplot(2,1,2);
% plot(X2,Y2);
% квадратичная зависимость

function y = the_method_of_smaller_squares(X, Y)
    n = size(X, 2);
    A = [n sum(X); sum(X) sum(X.^2)];
    B = [sum(Y); sum(X.*Y)]; %столбец свободных членов
    C = inv(A).*B; %находим решение системы
    A0 = C(1);
    A1 = C(2);
    y = @(x)A1+A0.*x;
end