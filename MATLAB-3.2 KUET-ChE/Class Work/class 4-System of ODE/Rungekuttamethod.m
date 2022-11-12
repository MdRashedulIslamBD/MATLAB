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
    k1=h*f(x0,y0)
    k2=h*f(x0+h/2 ,y0+k1/2)
    k3=h*f(x0+h/2 ,y0+k2/2)
    k4=h*f(x0+h ,y0+k3)
    dy=(1/6)*(k1+2*k2+2*k3+k4)
    y1=y0+dy;
    y0=y1
    x0=x0+h
end
y1
    
