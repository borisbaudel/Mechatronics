n = 3; % Ordre du filtre
Rp = 3; % Atténuation dans la bande passante en dB
f_c = 30e3; % Fréquence de coupure en Hz
f_s = 100e3; % Fréquence d'échantillonnage en Hz

Wp = 20e3 / (f_s / 2); 

[b, a] = cheby1(n, Rp, Wp, 'low');

sys = tf(b, a, 1/f_s);

disp('Numerator Coefficients (b):')
disp(b)
disp('Denominator Coefficients (a):')
disp(a)

figure;
bode(sys)
grid on
