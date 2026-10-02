clc; clear; close all;

N = 50;
n = 1:50;
 
x1 = randn(1,N);
x2 = randn(1,N);

my_system = @(x,n) abs(x);

a = 2;
b = 3;

combo_in = my_system(a*x1+b*x2,n);
y1 = my_system(x1,n);
y2 = my_system(x2,n);
out_combo = a*y1 + b*y2;

max_error = max(abs(out_combo-combo_in));

if max_error < 1e-10
    disp('Linear!!')
else
    disp('Not Linear!!')
end

delay = 5;

x1_delayed = [zeros(1,delay), x1(1:end-delay)];
y1_xdelayed = my_system(x1_delayed, n);
y1_delayed = [zeros(1,delay), y1(1:end-delay)];

max_error = max(abs(y1_xdelayed-y1_delayed));

if max_error < 1e-10
    disp('Time Invariant!!')
else
    disp('Not Time invariant!!')
end