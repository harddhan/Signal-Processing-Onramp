clear; clc; close all;

fs = 1000;
t = 0:1/fs:3;

signal = sin(2*pi*15*t) + 0.7*sin(2*pi*80*t) + 0.2*randn(size(t));

N = length(signal);
Y = fft(signal);
f = (0:floor(N/2))*fs/N;

P = abs(Y/N).^2;
P = P(1:length(f));
P(2:end-1) = 2*P(2:end-1);

figure;
plot(f, P);
xlabel('Frequency (Hz)');
ylabel('Power');
title('Power Spectrum');
xlim([0 150]);
grid on;
