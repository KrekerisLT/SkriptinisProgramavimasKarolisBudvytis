%Karolis Budvytis
%EKf-25
%2026-09-28

clc;
clear;
close all;

%%

x = linspace(0,200,300);
y = 2*exp(-0.02*x).*cos(0.2*x);

figure(1)
plot(x,y,'g','LineWidth',10)
grid on

xlabel('x')
ylabel('f(x)')
title('f(x)=2e^{-0.02x}cos(0.2x)')

axis([min(x) max(x) min(y)-0.2 max(y)+0.2])

%%

z1 = linspace(-pi,-0.01,1000);
z2 = linspace(0.01,pi,1000);

y1 = cot(z1);
y2 = cot(z2);

figure(2)
plot(z1,y1,'b','LineWidth',2)
hold on
plot(z2,y2,'r','LineWidth',2)

grid on

xlabel('z')
ylabel('cot(z)')
title('f(z)=cot(z)')
legend('(-\pi,0)','(0,\pi)')

ymin = min([min(y1) min(y2)]);
ymax = max([max(y1) max(y2)]);

axis([-pi pi ymin ymax])

%%

x = 0:0.1:10*pi;

y = sin(x).*cos(x);
z = cos(x);

figure(3)

subplot(2,1,1)
plot3(x,y,z,'LineWidth',2)
grid on
xlabel('x')
ylabel('y(x)')
zlabel('z(x)')
title('a)')

subplot(2,1,2)
polarplot(x,y,'LineWidth',2)
title('b)')

%% 


A = 5.5;
f = 8;
sigma = 0.8;
U1 = 3.5;
U2 = 1.5;

t = 0:0.002:1.2;

s = A*sin(2*pi*f*t);
n = sigma*randn(size(t));

x = s + n;

xf = x;
xf(abs(xf) < U2) = 0;

x_U1 = x;
x_U1(x_U1 <= U1) = NaN;


[maxVal,maxIdx] = max(xf);
[minVal,minIdx] = min(xf);

figure(4)

subplot(1,2,1)

plot(t,x,'--','LineWidth',1.5)
hold on

plot(t,xf,':','LineWidth',1.5)

yline(U1,'r--','U_1')
yline(U2,'m-','U_2')

grid on

title('Pradinis ir filtruotas signalai',...
'Color','m','FontSize',16)

xlabel('Laikas t, s')
ylabel('Itampa, V')

legend('Pradinis','Filtruotas','U_1','U_2')

axis([min(t) max(t) min(x)-1 max(x)+1])


subplot(1,2,2)

stem(t,x_U1,'filled','LineWidth',1.5)
hold on

plot(t(maxIdx),maxVal,'b*','MarkerSize',10)
plot(t(minIdx),minVal,'ro','MarkerSize',8)

grid on

title('Reiksmes virsijancios U_1',...
'Color','m','FontSize',16)

xlabel('Laikas t, s')
ylabel('Itampa, V')

legend('x > U_1',...
'Maksimali verte',...
'Minimali verte')

axis([min(t) max(t) U1-1 max(x)+1])