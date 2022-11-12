clc
clear
close
f=@(x,y) (x.^2 +y)
x0=0
y0=1
xn=input('give this value')
h=.05
n=(xn-x0)/h
for i=1:n
    y1=y0+h*f(x0,y0);

   y0=y1
    x0=x0+h
    %p(i)=x0
    %q(i)=y0
end
y1
%plot(p,q)
