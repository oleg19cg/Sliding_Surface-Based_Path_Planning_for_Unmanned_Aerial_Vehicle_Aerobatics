clear all;
clc;
%% Curva
gamma = linspace(0,2*pi,100);
r = 1;

xc = r * sin(gamma);
yc = xc.*cos(gamma);
zc = -r * cos(gamma).^2;

%mesh(x,y,z);
plot3(xc,yc,zc,'LineWidth', 3, 'Color', [0 0 0]);
hold on

%% Esfera

%r = 1;
%gammae = linspace(0,2*pi,100);
alphae = linspace(-pi/2,pi/2,100);

[gammae alphae] = meshgrid(gamma, alphae);

xe = r * sin(gammae).*cos(alphae);
ye = r * sin(gammae).*sin(alphae);
ze = r * cos(gammae);

plot3(xe,ye,ze,'Color', [0.4660 0.6740 0.1880]);
hold on
%mesh(xe,ye,ze);

%% Cilindro

%gamma = linspace(0,2*pi,100);

gammac = meshgrid(gamma);
r = 0.5;

z = -r + r * cos(gammac);
y = r * cos(gammac) * sin(gammac);
x = linspace(-1.1,1.1,100);

plot3(x,y,z, 'Color', [0 0.4470 0.7410]);
%mesh(x,y,z);