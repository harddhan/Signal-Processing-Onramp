clear; clc; close all;

fs = 800;
t = 0:1/fs:3;

signal = sin(2*pi*12*t) + 0.6*sin(2*pi*55*t) + 0.2*randn(size(t));

N = length(signal);
Y = fft(signal);
f = (0:floor(N/2))*fs/N;

magnitude = abs(Y/N);
magnitude = magnitude(1:length(f));
magnitude(2:end-1) = 2*magnitude(2:end-1);

figure;
plot(f, magnitude);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Frequency Analysis');
xlim([0 100]);
grid on;
