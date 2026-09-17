clear; clc; close all;

fs = 500;
t = 0:1/fs:4;

signalA = sin(2*pi*10*t) + 0.4*sin(2*pi*60*t);
signalB = sin(2*pi*10*t) + 0.4*sin(2*pi*90*t);

figure;
plot(t, signalA, t, signalB);
xlabel('Time (s)');
ylabel('Amplitude');
legend('Signal A','Signal B');
title('Comparing Signals');
grid on;

n = length(signalA);
f = (0:floor(n/2))*fs/n;
Y = fft(signalA);
P = abs(Y/n);
P = P(1:length(f));
P(2:end-1) = 2*P(2:end-1);

figure;
plot(f, P);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Power Spectrum');
xlim([0 120]);
grid on;
