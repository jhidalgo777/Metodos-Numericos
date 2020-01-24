function [x,y] = Heun_Pvi_Sistemas(f,a,b,N,y0)
%Método de Heun o Runge-Kutta 2 para problemas de valor inicial
%   Sistemas de EDO de Orden 1 con condiciones iniciales
h=(b-a)/N;
x=a:h:b;
x=x(:);
n=length(y0);
y=zeros(N+1,n);
y(1,:)=y0;
for k=1:N
    k1=h*feval(f,x(k),y(k,:))';
    k2=h*feval(f,x(k+1),y(k,:)+k1)';
    y(k+1,:)=y(k,:)+(k1+k2)/2;
end
end