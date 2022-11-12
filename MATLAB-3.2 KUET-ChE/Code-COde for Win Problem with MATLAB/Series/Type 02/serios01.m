
% 3     5     9    15    23
%  3     5     9    15    23 upto n term
clc
clear
close
n=input('type n term');
f=zeros(1,n);
f(1)=3;
for i=2:n
    f(i)=f(i-1)+(2*(i-1));
end
f