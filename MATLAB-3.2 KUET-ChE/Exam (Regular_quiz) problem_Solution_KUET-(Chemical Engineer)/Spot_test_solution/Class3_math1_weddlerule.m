clc
clear
close
xw=.55;
xf=.75;
F=100;
f=@(x) (1/(((2.69*x)/(1+(2.69-1)*x))-x));
n=input('input division number');
area=0;
if mod(n,6)~=0
    disp('error in division number');
else
h=(xf-xw)/n;
for i=6:6:n
    area=area+ ((h*3/10)*(f(xw)+5*f(xw+h)+f(xw+2*h)+6*f(xw+3*h)+f(xw+4*h)+5*f(xw+5*h)+f(xw+6*h)))
    xw=xw+6*h
end
area
W=F*exp(-area)
D=F-W
xd=((F*xf)-(W*.55))/D
end