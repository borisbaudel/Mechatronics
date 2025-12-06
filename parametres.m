%  MotorDat.m
%
%  Definition des constantes associees a la commande en vitesse d'un
%  moteur a courant continu 

clear all;
% Hacheur ---------------------------------------------------------------
Umax = 24;            % Tension maximale d'alimentation du moteur
Imax = 9.23;
h = 10e-6;             % Periode de commutation du Hacheur

% Moteur ----------------------------------------------------------------
R = 0.0809;              % resistance d'induit
L = 0.0308e-3;          % inductance d'induit
Te = L/R;              % constante de temps electrique
K = 55.4e-3;            % constante de couple
J = 1.31e-4;% 1290e-7;             % inertie
kv = 0;            % frottements visqueux
Tm = J/kv;             % constante de temps mecanique
Tem1 = R*J/(K*K);      % constante de temps electromecanique (approximee)
Tem2 = R*J/(K*K+R*kv); % constante de temps electromecanique (complete)
mu= R*kv/(K*K+R*kv);
Imax = 9.23;              % courant maximum
Cmax = K*Imax;         % couple maximum

% Valeurs de reference
Xref=400e-3;
Yref=300e-3;
Zref=200e-3; 
Cr=0; %Cmax*2/3;
K2 = 3.9789e-4; %vis sans fin
K3 = 10*10^3 / 400; %capteur position X
K4 = 10*10^3 / 250; %capteur position Z
Vmax = 10.3/60;% vitesse max 10m/min
Kii1 = 1; % a régler
Kpi1 = 1; % a régler      
