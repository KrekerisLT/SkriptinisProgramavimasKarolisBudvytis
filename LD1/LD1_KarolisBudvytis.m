%Karolis Budvytis
%EKf-25
%2026-09-14


clc;
clear;
close all;
x= 1:32;
y=x.^2;

plot(x,y, "o-r", x, y/3, "xb")
title("Dvi funkcijos")
xlabel("X-ai")
ylabel("F_1[-o-]  |    F_2 [-x-]")

help sin
%%
N=4;
v=N+1:0.5:N+5;

A= [4 5 6; 7 8 9; 10 11 12]

A(3,2)

B=[A(2,1) A(2,2); A(3,1) A(3,2)]

C=[A(1,1) A(1,3); A(3,1) A(3,3)]

Vektorius=v(1:3);
Aprijungtas=[A; Vektorius]