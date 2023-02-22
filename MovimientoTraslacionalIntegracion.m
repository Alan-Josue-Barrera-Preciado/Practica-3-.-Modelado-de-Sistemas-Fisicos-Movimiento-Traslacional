[t,x] = ode45(@MovimientoTraslacional, [0 10], [0 0 0 0]);

figure(1)
plot(t,x(:,1));
grid on
title("Posicion X1");
xlabel("Tiempo");
ylabel("Metros");
legend('Posicion');

figure(2)
% plot(t,x(:,2));
grid on
title("Posicion X2");
xlabel("Tiempo");
ylabel("Metros");
legend('Posicion');
