clear; clc; close all;

fs = 500;
t = 0:1/fs:4;

raw = 2 + sin(2*pi*8*t) + 0.35*randn(size(t));
cleaned = raw - mean(raw);
smoothed = movmean(cleaned, 15);

figure;
plot(t, raw);
xlabel('Time (s)');
ylabel('Amplitude');
title('Raw Signal');
grid on;

figure;
plot(t, cleaned, t, smoothed);
xlabel('Time (s)');
ylabel('Amplitude');
legend('Offset Removed','Smoothed');
title('After Preprocessing');
grid on;
