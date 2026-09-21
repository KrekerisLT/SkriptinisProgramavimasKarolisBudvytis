%Karolis Budvytis
%EKf-25
%2026-09-21

clear all
close all

a=10:-1:-15;

b= log2(a);

c=a./b;

d = c.';
disp(d)
%% 

Cm1=[pi/2: pi/2: (3*pi)/2];
Cm2=[-1:1];
Cm3=[-3:-1:-5];

C=[Cm1;Cm2;Cm3]

EiluciuSuma=sum(C,2)
%% 

A=5.5;
f=8;
sigma=0.8;
U1=3.5;
U2=1.5;
t=[0:0.002:1.2];

s=A*sin(2*pi*f*t);
n=sigma*randn(size(t));

S=s+n;

SVU1=s(s>U1);

SVU2=s;
SVU2(abs(s) < U2) = 0;

NF=length(S)

length(SVU1);

MAX=max(s);
MIN=min(s);
%% 


A =[0 1 0 2 3 0 4;
    0 0 0 0 0 0 0;
    0 5 0 6 7 0 8;
    0 9 0 1 2 0 3;
    0 0 0 0 0 0 0;
    0 4 0 5 6 0 7];

Eilute=~all(A==0,2);
Stulpeliai=~all(A==0,1);

B=A(Eilute, Stulpeliai)