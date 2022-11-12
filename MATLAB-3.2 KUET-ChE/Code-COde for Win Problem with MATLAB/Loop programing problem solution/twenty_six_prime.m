%26
% calculating whether a number is prime or not
clc
clear
n=input('type the number:=');
if n==1
    disp('not prime')
elseif n==2 || n==3 || n==5 || n==7 
     disp(' prime')
elseif mod(n,2)==0 || mod(n,3)==0 || mod(n,5)==0 || mod(n,7)==0
    disp('not  prime')
else
    disp(' prime')
end