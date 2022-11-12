%2, 3, 6, 11, 18, 27....  upto n term
clc
clear
close
n=input('type n term');
f=zeros(1,n);
f(1)=2;
j=1:2:100*n % j so many no problem
for i=2:n
   
   f(i)=f(i-1)+j(i-1)
    end

f