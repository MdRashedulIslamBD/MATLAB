clc
clear
close
a=input('input low limit for f(a)=-ve:');
b=input('input high limit for f(a)=+ve:');
a1=myfun(a);
b1=myfun(b);
if a1*b1>0
    disp('No root')
else
for i=1:100
c=(a+b)/2;
p=myfun(c);
if p>0
  b=c;
else
    a=c;
end
end
disp(c)
end


