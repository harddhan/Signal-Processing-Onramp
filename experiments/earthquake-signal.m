clear; clc; close all;

fs = 100;
t = 0:1/fs:30;

envelope = exp(-0.12*(t-8).^2) + 0.5*exp(-0.04*(t-16).^2);
signal = envelope .* (sin(2*pi*4*t) + 0.5*sin(2*pi*9*t));
signal = signal + 0.08*randn(size(t));

filtered = bandpass(signal, [2 12], fs);

figure;
plot(t, signal);
xlabel('Time (s)');
ylabel('Amplitude');
title('Example Earthquake Like Signal');
grid on;

figure;
plot(t, filtered);
xlabel('Time (s)');
ylabel('Amplitude');
title('After Bandpass Filtering');
grid on;
