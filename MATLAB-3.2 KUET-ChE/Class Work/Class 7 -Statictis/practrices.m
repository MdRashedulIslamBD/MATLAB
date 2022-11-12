clc
clear
close
a=readtable('a.xlsx');
% meanv=mean(a.Distance)
% median=median(a.Distance)
% modev=mode(a.Distance)
% stdv=std(a.Time)
% varv=var(a.Time)
% histogram(a.Distance,2:.1:8)
plot(a.ID,a.Time)

b=isoutlier(a.Time);
c=find(b);
new=a.Distance(c)*5+3;
a.Time(c)=new
figure
hold on
plot(a.ID,a.Time,'k')



