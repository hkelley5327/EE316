% Experimental Results
IL = [40.25, 37.349, 32.687, 27.490, 23.612, 19.152, 15.393, 12.277, 8.262, 4.539]; % in Amps
VL = [0.4821, 0.8591, 1.454, 2.087, 2.533, 3.036, 3.373, 3.789, 4.211, 4.595]; % in Volts

p = polyfit(IL, VL, 1); % eq for line of best fit
VL_fit = polyval(p, IL);
slope = p(1);
y_intercept = p(2);
x_intercept = -y_intercept / slope;

figure;
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