error1=max(abs(y-solucion_analitica))
error2=max(abs(y1-solucion_analitica))
error3=max(abs(y2-solucion_analitica))
error4=max(abs(y3-solucion_analitica))
c = categorical({'Heun Orden 2','Runge-Kutta Orden 4','Adams-Basforth Orden 4','Adams-Moulton Orden 4'});
errores = [error1 error2 error3 error4];
bar(c,errores,'r')
title('Modelo de Von Bertalanffy: Representaci�n de Errores en la aplicaci�n de M�todos Num�ricos a la Soluci�n Anal�tica')
xlabel('M�todos Num�ricos')
ylabel('Error')