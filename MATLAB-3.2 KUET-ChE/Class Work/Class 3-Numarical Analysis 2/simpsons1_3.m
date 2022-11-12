clc
clear
close
f=@(x) (1/(1+x));
x0=0;
x1=1;

n=input('give division number');
if mod(n,2)~=0
    disp('give right division number');
else
    sum=0;
h=(x1-x0)/n;
for i=2:2:n
  
   sum=sum+((h/3)*(f(x0)+4*f(x0+h) +f(x0+2*h)));
    x0=x0+2*h;
end
sum 
end

    