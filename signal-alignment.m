clear; clc; close all;

fs = 500;
t = 0:1/fs:3;

original = sin(2*pi*6*t) + 0.3*sin(2*pi*20*t);
shifted = circshift(original, 80);

[c,lags] = xcorr(shifted, original);
[~,idx] = max(c);
estimatedShift = lags(idx);

aligned = circshift(shifted, -estimatedShift);

figure;
plot(t, original, t, shifted);
xlabel('Time (s)');
ylabel('Amplitude');
legend('Original','Shifted');
title('Before Alignment');
grid on;

figure;
plot(t, original, t, aligned);
xlabel('Time (s)');
ylabel('Amplitude');
legend('Original','Aligned');
title('After Alignment');
grid on;

fprintf('Estimated shift: %d samples\n', estimatedShift);
