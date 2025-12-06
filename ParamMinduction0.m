%  MotorDat.m
%
%  Définition des paramètres pour la simulation du moteur ayschrone

% Moteur ----------------------------------------------------------------
clear;

Vsnom=230; %V
omega=2*pi*50; %rad.s-1

p=2; % nombre de paires de pôles
Nnom=1390; %tr/min;
omeganom=Nnom/60*2*pi; % conversion en rad/s

Rs=0.9; %Ohm
Lmu=410e-3; %H
Rf=1100; % Ohm
lr=73e-3; %H
Rr=2.5; %Ohm


% paramètres de simulation (valeurs "vraies" du moteur)
Rs_v = 2.5;               % Ohm -> résistance statorique
Rr_v = 1.8;               % Ohm -> résistance rotorique
Lcr_v = 0.483;            % H inductance rotorique
k_v = 0.8489;             % rapport de transformation rotor/stator
lcs_v = 62e-3;            % H inductance de fuite ramenée au stator
Tr_v = Lcr_v/Rr_v;        % constante de temps rotorique

Cnom=20;                  % Couple nominal
J=0.006;                  % inertie mécanique du moteur et de la charge
fv=Cnom/omeganom;              % couple de charge proportionnel à la vitesse (vnom= 147 rad/s)

h=50e-6;                  % période de hachage
Vmax=650;                 % tension d'alimention de l'onduleur

