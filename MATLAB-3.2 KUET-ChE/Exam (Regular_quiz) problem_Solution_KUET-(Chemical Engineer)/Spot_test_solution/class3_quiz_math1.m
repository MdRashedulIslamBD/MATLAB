clc
clear
close
xw=.55;
xf=.75;
F=100;
f=@(x) (1/(((2.69*x)/(1+(2.69-1)*x))-x));
n=input('input division number');
area=0;
if mod(n,3)~=0
    disp('error in division number');
else
h=(xf-xw)/n;
for i=3:3:n
    area=area+ ((h*3/8)*(f(xw)+3*f(xw+h)+3*f(xw+2*h)+f(xw+3*h)))
    xw=xw+3*h
end
area
W=F*exp(-area)
D=F-W
xd=((F*xf)-(W*.55))/D
end