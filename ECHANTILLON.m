n = 3; % Ordre du filtre
Rp = 3; % Atténuation dans la bande passante en dB
f_c = 30e3; % Fréquence de coupure en Hz
f_s = 100e3; % Fréquence d'échantillonnage en Hz

% Calcul de la fréquence de coupure normalisée
Wp = 20e3 / (f_s / 2); % Utilisation de la fréquence caractéristique de 20 kHz pour Wp

% Conception du filtre de Tchebyshev de type 1
[b, a] = cheby1(n, Rp, Wp, 'low');

% Création d'un système LTI à partir des coefficients du filtre
sys = tf(b, a, 1/f_s); % Le troisième argument est le temps d'échantillonnage

% Affichage de la fonction de transfert
disp('Numerator Coefficients (b):')
disp(b)
disp('Denominator Coefficients (a):')
disp(a)

% Visualisation de la réponse en fréquence avec la fréquence en Hz
figure;
bode(sys)
grid on
