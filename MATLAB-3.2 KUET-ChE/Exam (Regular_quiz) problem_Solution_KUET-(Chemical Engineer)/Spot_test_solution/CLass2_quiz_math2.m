clc
clear
close
f=@(x) 30-((pi*x.^2)*((3-x)/3));
a=-3;
b=1;
a1=f(a);
b1=f(b);
n=input('type iteration number:=');
for i=1:n
    c=((a*b1)-(b*a1))/(b1-a1);
    if f(c)>0
        b=c;
    else
        a=c;
    end
end
c; %negative hight means direction oposite
hight=abs(c)

