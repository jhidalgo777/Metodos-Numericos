%Se establece el formato num�rico
format longG
%Se aplica el m�todo de Heun de Orden 2 al Modelo de Verhulst
[x,y] = Heun_Pvi_Sistemas('funcion_verhulst',0,5,10,80.5*10e6./4)
%Se aplica el m�todo de Runge-Kutta de Orden 4 al Modelo de Verhulst
[x,y1] = RK4_Pvi_Sistemas('funcion_verhulst',0,5,10,80.5*10e6./4)
%Se aplica el m�todo de Adams-Basforth de Orden 4 al Modelo de Verhulst
[x,y2] = AB4_Sistemas('funcion_verhulst',0,5,10,80.5*10e6./4)
%Se aplica el m�todo de Adams-Moulton de Orden 4 al Modelo de Verhulst
[x,y3] = AM4_Sistemas('funcion_verhulst',0,5,10,80.5*10e6./4)
%Se calcula la soluci�n anal�tica del Modelo de Verhulst
solucion_analitica=80.5*10e6./(1+3*exp(-0.71.*x))
%C�digo de las gr�ficas
plot(x,solucion_analitica,'Color','r','MarkerEdgeColor','r','linewidth',3)
title('M�todos Num�ricos aplicados al Modelo de Verhulst con p(0)=K/4,r=0.71 y K=80.5*10^6 Kg de Biomasa')
xlabel('t: Tiempo [A�os]')
ylabel('y(t) - Cantidad de Biomasa')
hold on
plot(x,y,'Color','b','MarkerEdgeColor','b','linewidth',3)
hold on
plot(x,y1,'Color','g','MarkerEdgeColor','g','linewidth',3)
hold on
plot(x,y2,'Color','black','MarkerEdgeColor','black','linewidth',3)
hold on
plot(x,y3,'Color','y','MarkerEdgeColor','y','linewidth',3)
legend('Soluci�n Anal�tica','Heun Orden 2','Runge-Kutta Orden 4','Adams-Basforth Orden 4','Adams-Moulton Orden 4','Location','northwest')
grid