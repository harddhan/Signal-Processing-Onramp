clear; clc; close all;

fs = 500;
t = 0:1/fs:4;

signal = sin(2*pi*8*t) + 0.7*sin(2*pi*60*t) + 0.2*randn(size(t));

filtered10 = lowpass(signal, 10, fs);
filtered30 = lowpass(signal, 30, fs);
filtered80 = lowpass(signal, 80, fs);

figure;
plot(t, signal);
xlabel('Time (s)');
ylabel('Amplitude');
title('Original');
grid on;

figure;
plot(t, filtered10, t, filtered30, t, filtered80);
xlabel('Time (s)');
ylabel('Amplitude');
legend('10 Hz','30 Hz','80 Hz');
title('Different Lowpass Cutoffs');
grid on;
