%Se establece el formato numérico
format longG
%Se aplica el método de Heun de Orden 2 al Modelo de Brody
[x,y] = Heun_Pvi_Sistemas('funcion_brody',0,1460,10,13.76)
%Se aplica el método de Runge-Kutta de Orden 4 al Modelo de Brody
[x,y1] = RK4_Pvi_Sistemas('funcion_brody',0,1460,10,13.76)
%Se aplica el método de Adams-Basforth de Orden 4 al Modelo de Brody
[x,y2] = AB4_Sistemas('funcion_brody',0,1460,10,13.76)
%Se aplica el método de Adams-Moulton de Orden 4 al Modelo de Brody
[x,y3] = AM4_Sistemas('funcion_brody',0,1460,10,13.76)
%Se calcula la solución analítica del Modelo de Brody
solucion_analitica=688.*(1-0.98.*exp(-0.0011.*x))
%Código de las gráficas
plot(x,solucion_analitica,'Color','r','MarkerEdgeColor','r','linewidth',3)
title('Métodos Numéricos aplicados al Modelo de Brody con K=0.0011,A=688 y B=0.98')
xlabel('t: Edad [Días]')
ylabel('y(t) - Crecimiento en peso de Bufalinos de la raza Murrah (kg)')
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