function [x,y] = AM4_Sistemas(f,a,b,n,y0)
%Adams-Moulton orden 4 Explícito
h=(b-a)/n;
x=a:h:b;
x=x(:);
y=zeros(n+1,length(y0));
y(1,:)=y0;
for k=1:2
    K1=feval(f,x(k),y(k,:))';
    K2=feval(f,x(k)+h/2,y(k,:)+h*K1/2)';
    K3=feval(f,x(k)+h/2,y(k,:)+h*K2/2)';
    K4=feval(f,x(k+1),y(k,:)+h*K3)';
    y(k+1,:)=y(k,:)+h*(K1+2*K2+2*K3+K4)/6;
end
for k=3:n
    ex=1;iter=0;tol=1e-6;maxiter=10;
    y1=y(k,:);
    
    fk=feval(f,x(k),y(k,:))';
    fkm1=feval(f,x(k-1),y(k-1,:))';
    fkm2=feval(f,x(k-2),y(k-2,:))';
    
    [ffun,dffun]=feval(f,x(k+1),y1);
    fx=y1(1,:)-y(k,:)-h*(fkm2-5*fkm1+19*fk+9*ffun')/24;
    efx=norm(fx);
    
    while iter<maxiter && efx>tol && ex>tol
        dfx=1-h/24*9*dffun';
        d=fx./dfx;
        t=y1-d;
        
        [ffun,dffun]=feval(f,x(k+1),t);
        ft=t(1,:)-y(k,:)-h*(19*fk-5*fkm1+fkm2+9*ffun')/24;
        
        efx=norm(ft);ex=norm(t-y1);
        iter=iter+1;
        y1=t;fx=ft;
    end
    y(k+1,:)=y1(1,:);
end
end