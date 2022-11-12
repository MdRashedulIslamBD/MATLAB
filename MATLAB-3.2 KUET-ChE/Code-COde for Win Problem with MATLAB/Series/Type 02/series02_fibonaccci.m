

% Fibonacci series (0,1,1,2,3,5,8,13,21.......) upto n term
clc
clear
close
n=input('type n term');
f=zeros(1,n);
f(1)=0;
f(2)=1;
for i=3:n
    f(i)=f(i-2)+f(i-1);
end
f