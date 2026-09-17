clear; clc; close all;

fs = 1000;
t = 0:1/fs:2;

sine1 = sin(2*pi*5*t);
sine2 = 0.5*sin(2*pi*40*t);
noise = 0.25*randn(size(t));

signal = sine1 + sine2 + noise;

figure;
plot(t, signal);
xlabel('Time (s)');
ylabel('Amplitude');
title('Generated Signal');
grid on;

figure;
plot(t, sine1, t, sine2);
xlabel('Time (s)');
ylabel('Amplitude');
legend('5 Hz','40 Hz');
title('Two Simple Signals');
grid on;
