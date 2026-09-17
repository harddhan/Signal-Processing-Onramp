clear; clc; close all;

fs = 500;
t = 0:1/fs:4;

clean = sin(2*pi*8*t);
noisy = clean + 0.5*randn(size(t));
filtered = lowpass(noisy, 20, fs);

figure;
plot(t, clean, t, noisy, t, filtered);
xlabel('Time (s)');
ylabel('Amplitude');
legend('Clean','Noisy','Filtered');
title('Noisy Signal Experiment');
grid on;
