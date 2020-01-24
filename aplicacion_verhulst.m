%Se establece el formato numérico
format longG
%Se aplica el método de Heun de Orden 2 al Modelo de Verhulst
[x,y] = Heun_Pvi_Sistemas('funcion_verhulst',0,5,10,80.5*10e6./4)
%Se aplica el método de Runge-Kutta de Orden 4 al Modelo de Verhulst
[x,y1] = RK4_Pvi_Sistemas('funcion_verhulst',0,5,10,80.5*10e6./4)
%Se aplica el método de Adams-Basforth de Orden 4 al Modelo de Verhulst
[x,y2] = AB4_Sistemas('funcion_verhulst',0,5,10,80.5*10e6./4)
%Se aplica el método de Adams-Moulton de Orden 4 al Modelo de Verhulst
[x,y3] = AM4_Sistemas('funcion_verhulst',0,5,10,80.5*10e6./4)
%Se calcula la solución analítica del Modelo de Verhulst
solucion_analitica=80.5*10e6./(1+3*exp(-0.71.*x))
%Código de las gráficas
plot(x,solucion_analitica,'Color','r','MarkerEdgeColor','r','linewidth',3)
title('Métodos Numéricos aplicados al Modelo de Verhulst con p(0)=K/4,r=0.71 y K=80.5*10^6 Kg de Biomasa')
xlabel('t: Tiempo [Años]')
ylabel('y(t) - Cantidad de Biomasa')
hold on
plot(x,y,'Color','b','MarkerEdgeColor','b','linewidth',3)
hold on
plot(x,y1,'Color','g','MarkerEdgeColor','g','linewidth',3)
hold on
plot(x,y2,'Color','black','MarkerEdgeColor','black','linewidth',3)
hold on
plot(x,y3,'Color','y','MarkerEdgeColor','y','linewidth',3)
legend('Solución Analítica','Heun Orden 2','Runge-Kutta Orden 4','Adams-Basforth Orden 4','Adams-Moulton Orden 4','Location','northwest')
grid