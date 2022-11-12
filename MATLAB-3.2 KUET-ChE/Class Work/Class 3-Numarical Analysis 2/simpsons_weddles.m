clc
clear
close
f=@(x) (1/(1+x));
x0=0;
x1=1;
sum=0;
n=input('type division number');
if mod(n,6)~=0
    disp('give right division number');
else
h=(x1-x0)/n ;
for i=6:6:n
    sum=sum + ((h*3/10)*(f(x0)+5*f(x0+h)+f(x0+2*h) +6*f(x0+3*h)+f(x0+4*h)+5*f(x0+5*h)+f(x0+6*h)));
    x0=x0+6*h ;
end
sum
end
