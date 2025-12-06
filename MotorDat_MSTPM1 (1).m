%  MotorDat.m
%
%  Définition des constantes associées à la commande d'un moteur
%  synchrone

clear;

% Moteur ----------------------------------------------------------------
R = 0.13;        % résistance statorique
L = 1.7e-3;      % inductance propre stator
M = 0.85e-3;     % inductance mutuelle stator
p=4;             % nombre de paires de pôles
Vmax=530;        % Valeur de sortie redresseur triphasé alimenté sous 220V
h=50e-6;         % période de commutation de l'onduleur

fv=0.08;         % coefficient de frottement visqueux assurant un couple de 
                 % 25 N.m à la vitesse nominale de 314 rad.s-1 
J=0.004;         % constante de temps mécanique de 50ms

% Moteur (valeurs réelles ) -----------------------------------------------
R_v = 0.13;        
Lc_v = 2.55e-3;    
Te_v = Lc_v/R_v;   
psid0_v = 0.222;   


