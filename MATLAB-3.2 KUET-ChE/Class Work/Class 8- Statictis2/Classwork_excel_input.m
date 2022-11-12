clc
clear
close
a=readtable('data.xlsx');
x1=a.Var1;
y1=a.Var2;
x=x1'
y=y1'
n=numel(x);
%linear
xtx=[n sum(x);sum(x) sum(x.*x)];
xty=[sum(y);sum(x.*y)];
A=inv(xtx)*xty
yl=A(1)+A(2)*x ;
plot(x,y,x,yl);
%qurd
xtxq=[n sum(x) sum(x.*x);sum(x) sum(x.*x) sum(x.^3);sum(x.*x) sum(x.^3) sum(x.^4)];
xtyq=[sum(y);sum(x.*y);sum(x.*x.*y)];
Aq=inv(xtxq)*xtyq;
yq=Aq(1) +Aq(2).*x +Aq(3).*x.^2;
hold on
plot(x,yq);
%cubic
xtxc=[n sum(x) sum(x.*x) sum(x.^3);sum(x) sum(x.*x) sum(x.^3) sum(x.^4);sum(x.*x) sum(x.^3) sum(x.^4) sum(x.^5);sum(x.^3) sum(x.^4) sum(x.^5) sum(x.^6)];
xtyc=[sum(y);sum(x.*y);sum(x.*x.*y);sum(x.*x.*x.*y)];
Ac=inv(xtxc)*xtyc;
yc=Ac(1) +Ac(2).*x +Ac(3).*x.^2 +Ac(4).*x.^3 ;
hold on
plot(x,yc);
legend('real','linear','quad','cubic')
%r value of cubic
sse=0
ssr=0
sst=0
for i=1:1:n
sse=sse+(y(i)-yc(i)).^2
ssr=ssr+(yc(i)-mean(y)).^2
sst=sst+(y(i)-mean(y)).^2
end
% r=ssr/sst
% r=1-(sse/sst)
r=1-((sse/n)/var(y))

