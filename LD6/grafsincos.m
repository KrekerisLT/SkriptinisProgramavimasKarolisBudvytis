function varargout = grafsincos(x)

if nargin ~= 1
    error('Reikia pateikti vieną vektorių.');
end


s = sin(x);
c = cos(x);

if nargout == 0

    figure;

    plot(x, s, 'b', 'LineWidth', 2);
    hold on;
    plot(x, c, 'r', 'LineWidth', 2);
    grid on;

    title('sin(x) ir cos(x)');
    xlabel('x');
    ylabel('Reikšmė');
    legend('sin(x)', 'cos(x)');

else
    
    if nargout >= 1
        varargout{1} = s;
    end

    if nargout >= 2
        varargout{2} = c;
    end
end
end