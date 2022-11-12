clc
clear
close
f=@(x) (1/(1+x));
x0=0;
x1=1;
sum=0;
n=input('type division number');
if mod(n,3)~=0
    disp('give right division number');
else
h=(x1-x0)/n ;
for i=3:3:n
    sum=sum + ((h*3/8)*(f(x0)+3*f(x0+h)+3*f(x0+2*h) +f(x0+3*h)));
    x0=x0+3*h ;
end
sum
end
