function [x,y] = AB4_Sistemas(f,a,b,N,y0)
%Adams-Bashforth orden 4 Explícito
h=(b-a)/N;
x=a:h:b;
n=length(y0);
y=zeros(N+1,n);
y(1,:)=y0;
x=x(:);
% Primer paso con el método de Runge-Kutta de orden 4
for k=1:3
    K1=feval(f,x(k),y(k,:))';
    K2=feval(f,x(k)+h/2,y(k,:)+h/2*K1)';
    K3=feval(f,x(k)+h/2,y(k,:)+h/2*K2)';
    K4=feval(f,x(k+1),y(k,:)+h*K3)';
    y(k+1,:)=y(k,:)+h/6*(K1+2*K2+2*K3+K4);
end
% Siguientes pasos con el método AB4
for k=4:N
    K5=55*feval(f,x(k),y(k,:))';
    K6=-59*feval(f,x(k-1),y(k-1,:))';
    K7=37*feval(f,x(k-2),y(k-2,:))';
    K8=-9*feval(f,x(k-3),y(k-3,:))';
    y(k+1,:)= y(k,:) +h/24*(K5+K6+K7+K8);
end
end