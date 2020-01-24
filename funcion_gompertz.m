function [fun,dfun]=funcion_gompertz(x,y)
K=0.44;
A=118.62;
fun=K.*y.*(log(A./y));
dfun=K.*(log(A./y)-1);
end