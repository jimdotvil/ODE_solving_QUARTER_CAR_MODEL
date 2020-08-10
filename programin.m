clc
clear

%% Definition of initial values and solving 

h=0.001;  %step size
q=5;  %end
t=0:h:q;% timestep vector

x0=[0;0;0.001;0.25];% initial values

% the method's function is called and bring the solutions

[t,x]=odeEulerMODMOD(@acc,t,x0); %EULER METHOD

% the solutions are plotted to get the system's response
figure(1)
% to plot the values of displacement in the suspension
% and also in the tires and brake system
plot(t,x(3,:),'r',t,x(4,:),'--b')
grid on
title('Euler method')
legend('suspension','wheel')
xlabel('t') 
ylabel('x displacement (m)') 

%%

[t,x]=odeMidPointEXP(@acc,t,x0); % MIDPOINT METHOD

% the solutions are plotted to get the system's response
figure(2)
% to plot the values of displacement in the suspension
% and also in the tires and brake system
plot(t,x(3,:),'r',t,x(4,:),'--b')
grid on
title('Midpoint method')
legend('suspension','wheel')
xlabel('t') 
ylabel('x displacement (m)') 

%%

[t,x]=odeRK4(@acc,t,x0); % RUNGE KUTTA 4TH METHOD

% the solutions are plotted to get the system's response
figure(3)
% to plot the values of displacement in the suspension
% and also in the tires and brake system
plot(t,x(3,:),'r',t,x(4,:),'--b')
grid on
title('Runge Kutta 4th method')
legend('suspension','wheel')
xlabel('t') 
ylabel('x displacement (m)') 

%%

[t,x]=odeHeun(@acc,t,x0); % HEUN METHOD

% the solutions are plotted to get the system's response
figure(4)
% to plot the values of displacement in the suspension
% and also in the tires and brake system
plot(t,x(3,:),'r',t,x(4,:),'--b')
grid on
title('Heun method')
legend('suspension','wheel')
xlabel('t') 
ylabel('x displacement (m)') 
