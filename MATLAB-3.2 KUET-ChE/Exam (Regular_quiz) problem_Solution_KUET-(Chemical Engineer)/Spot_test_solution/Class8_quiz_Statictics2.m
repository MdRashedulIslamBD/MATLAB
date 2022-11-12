clc
clear
close all
a=readtable('L2 CW.xlsx');
c=a.CarNumber;
m=a.Mileage;
p=a.PriceOfCar___;
e=a.Efficiency___;
n=length(e);
%a
y=e;
x=m;
xtx=[n sum(x) sum(x.^2) sum(x.^3) sum(x.^4);sum(x) sum(x.^2) sum(x.^3) sum(x.^4) sum(x.^5);sum(x.^2) sum(x.^3) sum(x.^4) sum(x.^5) sum(x.^6);sum(x.^3) sum(x.^4) sum(x.^5) sum(x.^6) sum(x.^7);sum(x.^4) sum(x.^5) sum(x.^6) sum(x.^7) sum(x.^8)];
xty=[sum(y);sum(x.*y);sum(x.*x.*y);sum(x.*x.*x.*y);sum(x.*x.*x.*x.*y)];
A=inv(xtx)*xty ;
y1=A(1) +A(2).*x +A(3).*x.*x + A(4).*x.*x.*x +A(5).*x.*x.*x.*x;
%b
sse=0;
sst=0;
for i=1:1:n
    sse=sse+ (y(i)-y1(i)).^2;
    sst=sst+ (y(i)-mean(y)).^2;
    ssr=(y1(i)-mean(y)).^2;

end 
ssr
%c
plot(x,y,'x',x,y1,'o')
legend('real','calculated')
%d
r2=1-(sse/sst)
%e

%f
%d is more stronger as for e find r2=.9902 
