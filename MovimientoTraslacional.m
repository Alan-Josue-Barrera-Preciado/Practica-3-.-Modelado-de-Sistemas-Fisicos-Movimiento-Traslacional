function dx = MovimientoTraslacional(t,x)

%__________________ Definicion de los parametros_______________%

m1 = 290;
b1 = 1000;
m2 = 59;
k1 = 16182;
f = 0;
k2 = 19000;
z1 = 0.05*sin(0.5*pi*t);
z2 = 0.05*sin(20*pi*t);

%_________________ Definicion de la dinamica del sistema ______________%

dx=zeros(4,1);

%_________________ Definicion de las matrices ______________________%

M=[m1 0; 0 m2];
C = [b1 -b1; -b1 b1];
G = [k1*x(1)-k1*x(2)-f; -k1*x(1)+(k1+k2)*x(2)+f-k2*z1];

%_________________ Definicion de la dinamica del sistema ______________%

dx(1) = x(3);
dx(2) = x(4);
dx(3:4) = M\(-C*[x(3);x(4)]-G);

%______________________________________________________________________%