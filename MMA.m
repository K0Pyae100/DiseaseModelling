#problem 1

clear
rawTable = readtable('D:\USER\Documents\UCL\MMA\cw_data.csv');
x = rawTable.(1); %: get the excel column, Header1 (header name)
y = rawTable.(2); %: get the excel column, Header2 (header name)
figure;
plot(x,y)
xlim([-10000, 2500])
title("Change in population")
xlabel('Year(t)')
ylabel('Population(N)')




#problemOneGradient
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




#problem 4
clear

N1950=2499322112;
K=13000000000;
r=0.016226;
t = linspace(1950,2020);


N=((exp(r.*(t)).*K.*N1950))/(((exp(r.*(t))).*N1950)+K-N1950);

figure
plot(t,N)





#ExtrapolatingFunctionsFromDerivatives

dx = 0.01;
x = 0:dx:1;

dydx = cos(2*pi*x);

y(1) = 0;

for in = 1:length(dydx) -1
    y(in+1) = y(in)+ dx*dydx(in);
end

plot(x,y)

