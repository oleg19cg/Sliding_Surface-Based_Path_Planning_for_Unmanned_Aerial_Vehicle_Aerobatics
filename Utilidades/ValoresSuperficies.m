b = [1 0 0; 0 1 0; 0 0 1];

%% Lineal
cpL = [2 2 2];
cL = [2 2 2];
klL = [1 1 1];
a0l = [0 0 0 cpL(1) 0 0; 0 0 0 0 cpL(2) 0; 0 0 0 0 0 cpL(3)];

%% Looping
muO = 1;
gammaO = -3;
cpO = 2;
cO = 2;
klO = 1;
a0O = [0 0 0 -muO 0 -gammaO; 0 0 0 0 cpL(2) 0; 0 0 0 gammaO 0 -muO];

%% Spiral
muS = 1;
gammaS = 2;
cpS = 0.2;
cS = 0.2;
klS = 1;
a0S = [0 0 0 -muS -gammaS 0; 0 0 0 gammaS -muS 0; 0 0 0 0 0 cpL(3)];

%% Ocho lento
alpha8 = -3;
r8 = 1;
a08 = [0 0 0 0 0 2*alpha8; 0 0 0 0 0 0; 0 0 0 -2*alpha8 0 0];