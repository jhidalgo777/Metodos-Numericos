function [fun,dfun]=funcion_verhulst(x,y)
r=0.71;
K=80.5*10e6;
fun=(r.*y).*(1-(y./K));
dfun=0;
end