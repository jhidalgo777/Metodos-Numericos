function [x,y] = RK4_Pvi_Sistemas(f,a,b,N,y0)
%M�todo de Runge-Kutta 4 para problemas de valor inicial
%   Ecuaciones o Sistemas de EDO de orden 1 con una condici�n inicial
h=(b-a)/N;
x=a:h:b;
x=x(:);
n=length(y0);
y=zeros(N+1,n);
y(1,:)=y0;
for k=1:N
    k1=feval(f,x(k),y(k,:))';
    k2=feval(f,x(k)+h/2,y(k,:)+h/2*k1)';
    k3=feval(f,x(k)+h/2,y(k,:)+h/2*k2)';
    k4=feval(f,x(k+1),y(k,:)+h*k3)';
    y(k+1,:)=y(k,:)+h/6*(k1+2*k2+2*k3+k4);
end
end