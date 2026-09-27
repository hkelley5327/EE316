%% Filter Frequency Response Plots
clear;
clc;
close all;

%% Frequency values (Hz)
f = [25 50 75 100 150 200 300 500 600 700 800 900 1000];

%% Cutoff frequency
fc = 159.1594;

%% Low Pass Filter (LPF) theoretical results
LPF_gain = [-0.1059 -0.4088 -0.8709 -1.4451 -2.7606 -4.1147 ...
            -6.5830 -10.3621 -11.8219 -13.0845 -14.1940 ...
            -15.1822 -16.0722];

LPF_phase = [-8.9271 -17.4406 -25.2316 -32.1419 -43.3038 ...
             -51.4881 -62.0533 -72.3432 -75.1439 -77.1908 ...
             -78.7483 -79.9716 -80.9570];

%% High Pass Filter (HPF) theoretical results
HPF_gain = [-16.1835 -10.4658 -7.4061 -5.4815 -3.2752 -2.1305 ...
            -1.0770 -0.4191 -0.2953 -0.2189 -0.1686 ...
            -0.1337 -0.1086];

HPF_phase = [81.0730 72.5594 64.7684 57.8581 46.6962 ...
             38.5119 27.9467 17.6568 14.8561 12.8092 ...
             11.2517 10.0284 9.0431];

%% Cutoff point values
fc_gain = -3.0103;
LPF_fc_phase = -45;
HPF_fc_phase = 45;


%% Figure 1: LPF Gain vs Frequency
figure;
semilogx(f, LPF_gain, 'o-', 'LineWidth', 1.5);
hold on;
semilogx(fc, fc_gain, 'o', 'MarkerSize', 8, 'LineWidth', 2);
grid on;
xlabel('Frequency (Hz)');
ylabel('Gain (dB)');
title('Low Pass Filter Gain vs. Frequency');
xlim([25 1000]);
legend('Theoretical', 'Cutoff Frequency', 'Location', 'best');

saveas(gcf, 'LPF_Gain.jpg');


%% Figure 2: LPF Phase Angle vs Frequency
figure;
semilogx(f, LPF_phase, 'o-', 'LineWidth', 1.5);
hold on;
semilogx(fc, LPF_fc_phase, 'o', 'MarkerSize', 8, 'LineWidth', 2);
grid on;
xlabel('Frequency (Hz)');
ylabel('Phase Angle (degrees)');
title('Low Pass Filter Phase Angle vs. Frequency');
xlim([25 1000]);
legend('Theoretical', 'Cutoff Frequency', 'Location', 'best');

saveas(gcf, 'LPF_Phase.jpg');


%% Figure 3: HPF Gain vs Frequency
figure;
semilogx(f, HPF_gain, 'o-', 'LineWidth', 1.5);
hold on;
semilogx(fc, fc_gain, 'o', 'MarkerSize', 8, 'LineWidth', 2);
grid on;
xlabel('Frequency (Hz)');
ylabel('Gain (dB)');
title('High Pass Filter Gain vs. Frequency');
xlim([25 1000]);
legend('Theoretical', 'Cutoff Frequency', 'Location', 'best');

saveas(gcf, 'HPF_Gain.jpg');


%% Figure 4: HPF Phase Angle vs Frequency
figure;
semilogx(f, HPF_phase, 'o-', 'LineWidth', 1.5);
hold on;
semilogx(fc, HPF_fc_phase, 'o', 'MarkerSize', 8, 'LineWidth', 2);
grid on;
xlabel('Frequency (Hz)');
ylabel('Phase Angle (degrees)');
title('High Pass Filter Phase Angle vs. Frequency');
xlim([25 1000]);
legend('Theoretical', 'Cutoff Frequency', 'Location', 'best');

saveas(gcf, 'HPF_Phase.jpg');