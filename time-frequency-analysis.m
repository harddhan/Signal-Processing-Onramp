clear; clc; close all;

fs = 500;
t = 0:1/fs:6;

signal = sin(2*pi*(5 + 8*t).*t) + 0.2*randn(size(t));

figure;
spectrogram(signal, 128, 100, 256, fs, 'yaxis');
title('Time Frequency View');
