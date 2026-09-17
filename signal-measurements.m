clear; clc; close all;

fs = 500;
t = 0:1/fs:4;

signal = 2*sin(2*pi*10*t) + 0.25*randn(size(t));

meanValue = mean(signal);
rmsValue = rms(signal);
peakValue = max(abs(signal));
stdValue = std(signal);

fprintf('Mean: %.4f\n', meanValue);
fprintf('RMS: %.4f\n', rmsValue);
fprintf('Peak: %.4f\n', peakValue);
fprintf('Standard deviation: %.4f\n', stdValue);

figure;
plot(t, signal);
xlabel('Time (s)');
ylabel('Amplitude');
title('Signal Measurements');
grid on;
