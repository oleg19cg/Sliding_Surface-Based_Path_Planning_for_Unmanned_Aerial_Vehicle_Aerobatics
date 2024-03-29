k1 = 30;
k2 = 1;
k3 = 0.5;
k4 = 0.001;
%sdpvar k1;
alpha1 = 0.124454;

%Kpsi = 0.01*eye(4);

A1 = [-k2/2 -k1/2 0 0; 0 0 0 0; -k1 0 -k2 1; 0 -k3 -k4 0];
A2 = [0 0 0 1; 0 0 0 0; 0 0 0 0; 0 0 0 0];
A3 = [0 0 0 0; 0 0 0 1; 0 0 0 0; 0 0 0 0];
A4 = -1/2*A2;
A5 = -A2;

P1 = sdpvar(4, 4, 'symmetric');
P2 = sdpvar(4);
P3 = sdpvar(4);
P4 = sdpvar(4);
Kpsi = sdpvar(1);

LM1 = [alpha1*P1+P2*A1+A1'*P2', P1-P2+A1'*P3, P2'+A1'*P4'; P1-P2'+P3*A1, -P3-P3', P3-P4'; P2+P4*A1, P3'-P4, P4+P4'-Kpsi*eye(4)];
LM2 = [P2*A2+A2'*P2', A2'*P3', A2'*P4'; P3*A2, 0*eye(4), 0*eye(4); P4*A2, 0*eye(4), 0*eye(4)];
LM3 = [P2*A3+A3'*P2', A3'*P3', A3'*P4'; P3*A3, 0*eye(4), 0*eye(4); P4*A3, 0*eye(4), 0*eye(4)];
LM4 = [P2*A4+A4'*P2', A4'*P3', A3'*P4'; P3*A4, 0*eye(4), 0*eye(4); P4*A4, 0*eye(4), 0*eye(4)];
LM5 = [P2*A5+A5'*P2', A5'*P3', A5'*P4'; P3*A5, 0*eye(4), 0*eye(4); P4*A5, 0*eye(4), 0*eye(4)];

F = [P1 >= 0, Kpsi >= 0, Kpsi <= 0.5,  LM1 <= 0*eye(12), LM2 == 0*eye(12), LM3 == 0*eye(12), LM4 == 0*eye(12), LM5 == 0*eye(12)];

sol = optimize(F)

Pf1 = value(P1);
Pf2 = value(P2);
Pf3 = value(P3);
Pf4 = value(P4);
Kpsi = value(Kpsi);
eig(Pf1)
LMI1 = eig([alpha1*Pf1+Pf2*A1+A1'*Pf2', Pf1-Pf2+A1'*Pf3, Pf2'+A1'*Pf4'; Pf1-Pf2'+Pf3*A1, -Pf3-Pf3', Pf3-Pf4'; Pf2+Pf4*A1, Pf3'-Pf4, Pf4+Pf4'-Kpsi*eye(4)]);
LMI2 = eig([Pf2*A2+A2'*Pf2', A2'*Pf3', A2'*Pf4'; Pf3*A2, 0*eye(4), 0*eye(4); Pf4*A2, 0*eye(4), 0*eye(4)]);
LMI3 = eig([Pf2*A3+A3'*Pf2', A3'*Pf3', A3'*Pf4'; Pf3*A3, 0*eye(4), 0*eye(4); Pf4*A3, 0*eye(4), 0*eye(4)]);
LMI4 = eig([Pf2*A4+A4'*Pf2', A4'*Pf3', A3'*Pf4'; Pf3*A4, 0*eye(4), 0*eye(4); Pf4*A4, 0*eye(4), 0*eye(4)]);
LMI5 = eig([Pf2*A5+A5'*Pf2', A5'*Pf3', A5'*Pf4'; Pf3*A5, 0*eye(4), 0*eye(4); Pf4*A5, 0*eye(4), 0*eye(4)]);