clear; clc; close all;

fs = 1000;
t = 0:1/fs:3;

signal = sin(2*pi*10*t) + sin(2*pi*50*t) + sin(2*pi*150*t);
filtered = bandpass(signal, [40 70], fs);

figure;
plot(t, signal, t, filtered);
xlabel('Time (s)');
ylabel('Amplitude');
legend('Original','Bandpass');
title('Bandpass Filtering');
grid on;
