% Simulation correction echantillonnee
clear all; close all;

wo=0.7;
amort=0.1;
gainBo=1.5;
Te=0.5;
%variable periode echantillonnage Garduino Tech
Tech=Te;

sysbo=tf([gainBo],[wo^-2 , 2*amort/wo , 1]);

% calcul de la FTBO échantillonnée avec plusieurs méthodes

sysbod=c2d(sysbo , Te , 'zoh');
sysbod1=c2d(sysbo , Te , 'foh');
sysbod2=c2d(sysbo , Te , 'tustin');

% tracé des différentes FTBO pour comparaison

figure(1)
hold on
step(sysbo)
step(sysbod)
step(sysbod1)
step(sysbod2)
hold off

systbf = sysbod2/(1 + sysbod2); 
retard = tf([1],[1 0], Te); % Retard 
C2 = retard/sysbod2(1 - retard) ; % C 

woBf=1.6;
amortBf=0.8;
gainBf=1;
sysbf=tf([gainBf],[woBf^-2 , 2*amortBf/woBf , 1]);
sysbfd=c2d(sysbf , Te , 'zoh');


figure(2)
hold on
step(sysbf)
step(sysbfd)
hold off

% définie précédemment.

correcteurZdan=sysbfd/(sysbod*(1-sysbfd));

% calcul de la FTBF

gbf=feedback(correcteurZdan*sysbod,1);

% tracé de la réponse du système asservi avec le correcteur

figure(3)
hold on
step(gbf)
step(sysbf)
hold off





