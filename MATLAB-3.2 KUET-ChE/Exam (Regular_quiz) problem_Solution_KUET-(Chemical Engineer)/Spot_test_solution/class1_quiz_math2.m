clc
clear
close
f=@(x) ((3*x.^2)-(7*x) +11);
x1=[-10:.1:10];
y1=abs(x1);
y2=f(x1);
plot(x1,y1,'r');
hold on
plot(x1,y2,'k');
grid on
xlabel('x axix');
ylabel('y axix');
title('two graph');