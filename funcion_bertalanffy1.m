function [fun,dfun]=funcion_bertalanffy1(x,y)
K=0.386;
A=81.2;
fun=K.*(A-y);
dfun=-K;
end