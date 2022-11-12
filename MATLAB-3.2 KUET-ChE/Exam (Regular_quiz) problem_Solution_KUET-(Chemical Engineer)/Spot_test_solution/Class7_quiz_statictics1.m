clc
clear
close
a=readtable('data.xlsx');
GPA_R=a.GPA;
meanv=mean(a.Attendance) 
%b
a.GPA(a.GPA<2)=0;
c1=find(a.StudyHour<5 & a.GPA>4) ;
s1=a.StudyHour(c1);
a.GPA(c1)=2.5+(s1/8);
c2=find(a.StudyHour>=10 & a.GPA>4) ;
s2=a.StudyHour(c2);
a.GPA(c2)=3.1+((s2-2)/10);
c3=find(a.StudyHour<10 & a.StudyHour>=5 & a.GPA>4) ;
s3=a.StudyHour(c3);
a.GPA(c3)=3+(s3/10);
GPA=a.GPA;
% ID=input('Random Id Number');
% l=find(a.ID==ID)
% Random_GPA=GPA(l)

%c
medianv=median(GPA)
stdv=std(GPA)
%d
modv=mode(a.Age)
subplot(2,2,1);
boxplot(a.Age);
%e
subplot(2,2,2);
histogram(a.StudyHour,2:.5:8);
%f
q3=prctile(GPA,75)
%g
subplot(2,2,3);
plot(a.ID,GPA_R);
hold on
plot(a.ID,GPA);
legend before
%h modified use
c4=find(GPA>=3.8 & GPA<=4);
Std_Number=length(c4)
study_h=a.StudyHour(c4);
GPA_h=GPA(c4);
subplot(2,2,4);
plot(study_h,GPA_h,'x')









        

