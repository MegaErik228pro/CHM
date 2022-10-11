%Метод симсона

f=@(x) (x.*4.^(1-7.*x));
g=@(x) ((sin(9-15.*x))./(9-15.*x));
%g не интегрируемо
a=0;
b=0.5;
n1=10;
n2=100;

arr_f(1)=simson(a,b,f,n1);
arr_f(2)=simson(a,b,f,n2);
arr_f(3)=integral(f,a,b);

arr_g(1)=simson(a,b,g,n1);
arr_g(2)=simson(a,b,g,n2);
arr_g(3)=integral(g,a,b);

delta_abs_f1=abs(arr_f(3)-arr_f(2));
delta_abs_f2=abs(arr_f(3)-arr_f(1));
delta_rel_f1=abs(delta_abs_f1/arr_f(3));
delta_rel_f2=abs(delta_abs_f2/arr_f(3));


delta_abs_g1=abs(arr_g(3)-arr_g(2));
delta_abs_g2=abs(arr_g(3)-arr_g(1));
delta_rel_g1=abs(delta_abs_g1/arr_g(3));
delta_rel_g2=abs(delta_abs_g2/arr_g(3));

function sum = simson(a,b,f,n)
h = (b-a)/n;
k1 = 0; 
k2 = 0;
for i=1:2:n
    k1 = k1 + f(a + i*h);
    k2 = k2 + f(a + (i+1)*h);
end
sum=h/3*(f(a) + 4*k1 + 2*k2);
end