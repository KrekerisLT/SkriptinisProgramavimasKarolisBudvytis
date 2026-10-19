clc;
clear;
close all;

global x y

x = 2*pi:-0.1:-2*pi;
y = zeros(size(x));

skaiciuok_neigiami;
skaiciuok_neneigiami;

plot(x,y,'k-.+','LineWidth',1.5)
grid on
xlabel('x')
ylabel('y')
title('Duotoji funkcija')