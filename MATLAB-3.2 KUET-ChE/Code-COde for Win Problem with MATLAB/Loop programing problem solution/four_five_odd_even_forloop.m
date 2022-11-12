% odd and even use for loop in matlab
clc
clear
n=input('type the number:=');
%for loop even
f=zeros(1,n);
for i=1:n
    if mod(i,2)==0
        f(i)=i;
    end
end
even=f(f~=0)

%for loop odd
f=zeros(1,n);
for i=1:n
    if mod(i,2)~=0
        f(i)=i;
    end
end
odd=f(f~=0)

    
