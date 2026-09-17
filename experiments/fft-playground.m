clear; clc; close all;

fs = 1000;
t = 0:1/fs:2;

signal = sin(2*pi*25*t) + 0.5*sin(2*pi*75*t);

N = length(signal);
Y = fft(signal);
f = (0:floor(N/2))*fs/N;

A = abs(Y/N);
A = A(1:length(f));
A(2:end-1) = 2*A(2:end-1);

figure;
plot(f, A);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('FFT Playground');
xlim([0 120]);
grid on;
