clc
clear
close
a=1; %guess for negative f(a)
b=3; %guess for positive f(a)
a1=myfun(a);
b1=myfun(b);

for i=1:1000
c=(a+b)/2;
p=myfun(c);
if (a1*p)<0
  b=c;
else
    a=c;
end
end

disp(c)
