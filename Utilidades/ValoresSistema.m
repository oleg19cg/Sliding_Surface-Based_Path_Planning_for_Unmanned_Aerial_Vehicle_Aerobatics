m = 1;
g = 9.81;

A = [0*eye(3) eye(3); 0*eye(3) 0*eye(3)];
B = [0*eye(3); eye(3)];

%Condiciones Iniciales
CI = [0;0;0;0;0;0];

%Potencia del ruido
Np = 0;