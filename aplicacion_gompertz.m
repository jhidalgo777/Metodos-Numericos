%Se establece el formato numérico
format longG
%Se aplica el método de Heun de Orden 2 al Modelo de Gompertz
[x,y] = Heun_Pvi_Sistemas('funcion_gompertz',0,10,10,12.2215139066345)
%Se aplica el método de Runge-Kutta de Orden 4 al Modelo de Gompertz
[x,y1] = RK4_Pvi_Sistemas('funcion_gompertz',0,10,10,12.2215139066345)
%Se aplica el método de Adams-Basforth de Orden 4 al Modelo de Gompertz
[x,y2] = AB4_Sistemas('funcion_gompertz',0,10,10,12.2215139066345)
%Se aplica el método de Adams-Moulton de Orden 4 al Modelo de Gompertz
[x,y3] = AM4_Sistemas('funcion_gompertz',0,10,10,12.2215139066345)
%Se calcula la solución analítica del Modelo de Gompertz
solucion_analitica=118.62.*exp(-(1/0.44).*exp(-0.44.*x))
%Código de las gráficas
plot(x,solucion_analitica,'Color','r','MarkerEdgeColor','r','linewidth',3)
title('Métodos Numéricos aplicados al Modelo de Gompertz con K=0.44,A=118.62 y L(0)=12.22')
xlabel('t: Edad [Años]')
ylabel('y(t) - Crecimiento o Longitud de la Concha (mm)')
hold on
plot(x,y,'Color','b','MarkerEdgeColor','b','linewidth',3)
hold on
plot(x,y1,'Color','g','MarkerEdgeColor','g','linewidth',3)
hold on
plot(x,y2,'Color','k','MarkerEdgeColor','k','linewidth',3)
hold on
plot(x,y3,'Color','y','MarkerEdgeColor','y','linewidth',3)
legend('Solución Analítica','Heun Orden 2','Runge-Kutta Orden 4','Adams-Basforth Orden 4','Adams-Moulton Orden 4','Location','northwest')
grid