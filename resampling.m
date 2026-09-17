clear; clc; close all;

fs1 = 1000;
fs2 = 250;

t1 = 0:1/fs1:2;
signal = sin(2*pi*20*t1) + 0.3*sin(2*pi*70*t1);

resampled = resample(signal, fs2, fs1);
t2 = 0:1/fs2:2;

figure;
plot(t1, signal);
xlabel('Time (s)');
ylabel('Amplitude');
title('Original Signal');
grid on;

figure;
plot(t2, resampled);
xlabel('Time (s)');
ylabel('Amplitude');
title('Resampled Signal');
grid on;
