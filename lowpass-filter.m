clear; clc; close all;

fs = 1000;
t = 0:1/fs:3;

signal = sin(2*pi*10*t) + 0.6*sin(2*pi*120*t);
filtered = lowpass(signal, 30, fs);

figure;
plot(t, signal, t, filtered);
xlabel('Time (s)');
ylabel('Amplitude');
legend('Original','Lowpass');
title('Lowpass Filtering');
grid on;
