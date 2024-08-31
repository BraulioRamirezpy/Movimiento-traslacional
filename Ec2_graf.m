[t, y] = ode45(@Ec2, [0, 5], [0, 0, 0, 0,]);

figure(1)

subplot(2,1,1)
plot(t, y(:,1));  
grid on


subplot(2,1,2)
plot(t, y(:,2)); 
grid on
