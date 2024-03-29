%Altura

% Posicion deseada
xrxp = 0;
xryp = 0;
xrzp = 5;

xrLH = [xrxp; xryp; xrzp; 0; 0; 0];                 %Posicion
t1 = 2;                                             %Tiempo Acrobacia

%Primera acrobacia (Looping)
% Posicion deseada
xrxp = 1;
xryp = 0;
xrzp = 5;

xrLPA = [xrxp; xryp; xrzp; 0; 0; 0];                %Posicion
t2 = t1 + 0.5;                                      %Tiempo Posicion
xrO = [xrxp; xryp; xrzp + sqrt(muO); 0; 0; 0];      %Acrobacia
tO = t2 + 1.9;                                        %Tiempo Acrobacia

%Segunda acrobacia (Ocho Lento)
% Posicion deseada
xrxp = 4;
xryp = 0;
xrzp = 5;

xrLSA = [xrxp; xryp; xrzp; 0; 0; 0];                %Posicion
t3 = tO + 1.0;                                      %Tiempo Posicion
xr8 = [xrxp; xryp; xrzp; 0; 0; 0];                  %Acrobacia 
t8 = t3 + 2.1;                                      %Tiempo Acrobacia

%Tercera acrobacia (Spiral)
% Posicion deseada
xrxp = 4;
xryp = -6;
xrzp = 5;

xrLTA = [xrxp; xryp; xrzp; 0; 0; 0];                %Posicion
t4 = t8 + 1.1;                                      %Tiempo Posicion
xrzp = xrzp - 3;
xrS = [xrxp - sqrt(muS); xryp; xrzp; 0; 0; 0];      %Acrobacia
tS = t4 + 8;                                     %Tiempo Acrobacia

%Regreso
% Posicion deseada
xrxp = 0;
xryp = 0;
xrzp = 5;

xrLR = [xrxp; xryp; xrzp; 0; 0; 0];                 %Posicion
t5 = tS + 1.45;                                        %Tiempo Posicion

%Bajar
% Posicion deseada
xrxp = 0;
xryp = 0;
xrzp = 0;

xrLB = [xrxp; xryp; xrzp; 0; 0; 0];                 %Posicion
t6 = t5 + 1.8;                                      %Tiempo Posicion

