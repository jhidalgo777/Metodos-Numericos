function [fun,dfun]=funcion_brody(x,y)
K=0.0011;
A=688;
fun=K.*(A-y);
dfun=-K;
end