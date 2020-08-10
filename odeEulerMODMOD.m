function [t,x] = odeEulerMODMOD(f,t,x0)
%odeEuler Is a function that calculates the numerical solution for an
%initial value problem via Euler method.

%   This function receives the differential equation, the step size and the
%   initial value to calculate the solution.

h=t(2)-t(1);
N=size(t,2)-1; 
x=[x0,zeros(4,N)];     
x(:,1)=x0;

    for n=1:N
    x(:,n+1)=x(:,n)+h*f(t(:,n),x(:,n));
    end
   
end
