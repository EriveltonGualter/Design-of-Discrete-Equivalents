% Erivelton Gualter dos Santos
% erivelton.gualter@gmail.com
% Created 5/4/2016

% Aproximações de tempo discreto %

clear; clear global; close all;

T = 1;

figure(1); clf; hold on;

title('Mapeamento do plano s no plano z','FontSize',12,'FontName','Times New Roman')
DrawPlaneZ(2*pi);
map_s2z(T)
pause();

clf; clear; clear global; hold on;
title('Retangular para Frente','FontSize',12,'FontName','Times New Roman')
DrawPlaneZ1(pi);

pause()
clf; clear; clear global; hold on;
title('Retangular para tras','FontSize',12,'FontName','Times New Roman')
DrawPlaneZ2(pi);

pause()
clf; clear; clear global; hold on;
title('Transformação Bilinear','FontSize',12,'FontName','Times New Roman')
DrawPlaneZ3(pi);

