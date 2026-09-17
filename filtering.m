clear; clc; close all;

fs = 500;
t = 0:1/fs:4;

clean = sin(2*pi*12*t);
noise = 0.7*sin(2*pi*100*t) + 0.2*randn(size(t));
noisy = clean + noise;

filtered = lowpass(noisy, 30, fs);

figure;
plot(t, noisy);
xlabel('Time (s)');
ylabel('Amplitude');
title('Noisy Signal');
grid on;

figure;
plot(t, filtered);
xlabel('Time (s)');
ylabel('Amplitude');
title('Filtered Signal');
grid on;
