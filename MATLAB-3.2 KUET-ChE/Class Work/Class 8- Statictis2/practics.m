clc
clear
close
datav=readtable('data.xlsx')
% x=[1 2 2.6 3.8 4.9 5.8 6.6 7.4 8.4 9];
% y=[200 440 570 780 970 1110 1200 1310 1420 1490];
a=readtable('data.xlsx')
x1=a.Var1;
x=x1'
y1=a.Var2;
y=y1'

 plot(x,y)
%linear regration
 n=length(x);
xtx=[n sum(x);sum(x) sum(x.*x)] ;
xty=[sum(y);sum(x.*y)] ;
a=inv(xtx)*xty 
y1=a(1) +a(2)*x  
hold on
plot(x,y1)

%quadratic regression

xtxq=[n sum(x) sum(x.*x);sum(x) sum(x.*x) sum(x.*x.*x);sum(x.*x) sum(x.*x.*x) sum(x.*x.*x.*x)];
xtyq=[sum(y); sum(x.*y); sum(x.*x.*y)];
aq=inv(xtxq)*xtyq
yq=aq(1)+aq(2)*x +aq(3).*x.*x
 hold on
 plot(x,yq)
%  cubic equation
xtxc=[n sum(x) sum(x.*x) sum(x.*x.*x);sum(x) sum(x.*x) sum(x.*x.*x) sum(x.*x.*x.*x);sum(x.*x) sum(x.*x.*x) sum(x.*x.*x.*x) sum(x.*x.*x.*x.*x); sum(x.*x.*x) sum(x.*x.*x.*x) sum(x.*x.*x.*x.*x) sum(x.*x.*x.*x.*x.*x)];
xtyc=[sum(y); sum(x.*y); sum(x.*x.*y); sum(x.*x.*x.*y)];
 ac=inv(xtxc)*xtyc
 yc=ac(1) +ac(2).*x + ac(3).*x.*x + ac(4).*x.*x.*x
 hold on
 plot(x,yc)
 legend('real','linear','quadratic','cubic')
 %Coefficient of regration
 
 sse=0
 sst=0
 ssr=0
 
 for i=1:1:n
      sse=sse+ (y(i)-yc(i)).^2
      sst=sst+(y(i)-mean(y)).^2
ssr=ssr+(yc(i)-mean(y)).^2
 end
 
 
%  r2=1-((sse/n)/var(y))
% r2=1-(sse/sst)
r2=ssr/sst
 
    