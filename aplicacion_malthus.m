%Se establece el formato numérico
format longG
%Se aplica el método de Heun de Orden 2 al Modelo de Malthus
[x,y] = Heun_Pvi_Sistemas('funcion_malthus',0,10,10,150)
%Se aplica el método de Runge-Kutta de Orden 4 al Modelo de Malthus
[x,y1] = RK4_Pvi_Sistemas('funcion_malthus',0,10,10,150)
%Se aplica el método de Adams-Basforth de Orden 4 al Modelo de Malthus
[x,y2] = AB4_Sistemas('funcion_malthus',0,10,10,150)
%Se aplica el método de Adams-Moulton de Orden 4 al Modelo de Malthus
[x,y3] = AM4_Sistemas('funcion_malthus',0,10,10,150)
%Se calcula la solución analítica del Modelo de Malthus
solucion_analitica=150*exp(0.28768207245.*x)
%Código de las gráficas
plot(x,solucion_analitica,'Color','r','MarkerEdgeColor','r','linewidth',3)
title('Métodos Numéricos aplicados al Modelo de Malthus con p(0)=150 y alpha=0.28768207245')
xlabel('t: Tiempo [Horas]')
ylabel('y(t) - No. de Bacterias')
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