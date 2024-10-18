# DiseaseModelling

clear
rawTable = readtable('D:\USER\Documents\UCL\MMA\cw_data.csv');
x = rawTable.(1); %: get the excel column, Header1 (header name)
y = rawTable.(2); %: get the excel column, Header2 (header name)
figure;

dn = diff(y)
dt = diff(x)

y = dn./dt 
t2 = x(1:end-1)
x = t2


plot(x,y)

xlim([-10000, 2500])
title("Rate of change of population")
ylabel('Rate of change of populatoin[N/t(people/year)]')
xlabel('Time[t(year)]')
