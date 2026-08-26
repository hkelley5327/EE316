IL = [45.455 41.667 35.714 29.412 25 20 16.667 12.5 8.333 4.545]; % in Amps
VL = [0.455 0.833 1.429 2.059 2.5 3 3.333 3.75 4.167 4.545]; % in Volts

p = polyfit(IL, VL, 1); % eq for line of best fit
VL_fit = polyval(p, IL);
slope = p(1);
y_intercept = p(2);
x_intercept = -y_intercept / slope;

plot (IL, VL, 'o')
hold on
plot(IL, VL_fit)
hold off

xlabel('I_L (mA)');
ylabel('V_L (V)');
title('V_L vs I_L with Linear Fit');
legend('Measured Data', 'Line of Best Fit', 'Location', 'northeast');
grid on;

text(30, 4.0, sprintf(['Slope = %.4f V/mA\n' ...
                       'V-intercept = %.4f V\n' ...
                       'I-intercept = %.4f mA'], ...
                       slope, y_intercept, x_intercept), ...
     'Color', 'black', ...
     'BackgroundColor', 'white', ...
     'EdgeColor', 'black', ...
     'Margin', 8);