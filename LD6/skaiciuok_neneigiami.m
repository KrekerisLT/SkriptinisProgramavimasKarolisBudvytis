function skaiciuok_neneigiami

global x y

for i = 1:length(x)
    if x(i) >= 0
        y(i) = sin(x(i));
    end
end

end
