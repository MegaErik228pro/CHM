f=@(x) (x.^3+9.*x-11);
x=linspace(1.08,1.082);
plot(x, f(x));
ax=gca;
ax.XAxisLocation='origin';
ax.YAxisLocation='origin';

%[der1,der2] = derivatives(sym(f));
%function [der1,der2] = derivatives(f)
%    der1=matlabFunction(diff(f));
%    der2=matlabFunction(diff(f,2));
%end

h=0;
a=0;
b=2;
while abs(b-a)>0.001
    h=(a+b)/2;
    if f(h)>0
        b=h;
    else
        a=h;
    end
end
