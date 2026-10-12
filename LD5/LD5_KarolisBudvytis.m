% Karolis Budvytis
% EKf-25
% 2026-10-12

clear all;
close all;
clc;

studentai = {
    'Jonas', 'Jonaitis', 'Vilnius';
    'Petras', 'Petraitis', 'Kaunas';
    'Ona', 'Onaite', 'Klaipeda'
    };


for i = 1:size(studentai,1)
    duomenys(i).Vardas = studentai{i,1};
    duomenys(i).Pavarde = studentai{i,2};
    duomenys(i).Adresas = studentai{i,3};
end

if isstruct(duomenys)
    disp('Kintamasis yra struktura.');
else
    disp('Kintamasis nera struktura.');
end

%%

ivestos_reiksmes = [];

while true

    m = input('Iveskite m reiksme: ');


    if any(ivestos_reiksmes == m)
        disp('Tokia m reiksme jau buvo ivesta. Programa baigiama.');
        break;
    end

    ivestos_reiksmes(end+1) = m;

    if m < 0
        f = m^2 + 1;
    elseif m == 0
        f = (m + 1)/2;
    else
        f = m^2 - 1;
    end

    disp(['f(m) = ', num2str(f)])

end

%%

x = input('Iveskite x: ');
y = input('Iveskite y: ');

for i = 1:20

    m = randi([1 x]);
    n = randi([1 y]);

    A = zeros(x, y);

    A(m,n) = NaN;

    disp(['Iteracija ', num2str(i)])
    disp(A)

    pause(0.5)
    clc
end