% Karolis Budvytis
% EKf-25
% 2026-10-05

clear all;
close all;
clc;

%%
clear; clc; close all;

x = linspace(-2,2,100);
y = linspace(-2,2,100);

[X,Y] = meshgrid(x,y);

Z = sin((X.^2 + Y.^2)/20) .* exp(-(X.^2 + Y.^2));

figure
surf(X,Y,Z)

shading interp
colormap(turbo)
colorbar

xlabel('X')
ylabel('Y')
zlabel('f(x,y)')
title('Funkcijos a) turio grafikas')

view(90,90)

%%

x = linspace(-2,2,100);
y = linspace(-2,2,100);

[X,Y] = meshgrid(x,y);

Z = sin(abs(X+Y)./20).*exp(-abs(X+Y));

figure(2)
surf(X,Y,Z)

xlabel('x')
ylabel('y')
zlabel('f(x,y)')
title('Funkcijos b) paviršiaus grafikas')

colormap(parula)
shading interp
view(60,60)
grid on

%%

[x, y] = meshgrid(-1:0.05:1, -1:0.05:1);

z = 1 - (x.^2 + y.^2);

figure;
surf(x, y, z);

colormap([1 0 0]);

camlight left;
lighting gouraud;

grid on;