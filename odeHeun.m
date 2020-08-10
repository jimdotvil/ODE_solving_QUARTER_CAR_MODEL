function [t,x] = odeHeun(f,t,x0)
%odeHeun Is a function that calculates the numerical solution for an
%initial value problem via Heun method. Is a multi-step method with
%additional predictor and corrector steps to Euler method, it works with
%the average of two slopes.
%   This function receives the differential equation, the step size and the
%   initial value to determine the required values.

h=t(2)-t(1);
N=size(t,2)-1;
x=[x0,zeros(4,N)];
ytilde=[x0,zeros(4,N)];
x(:,1)=x0;

    for n=1:N
    ytilde(:,n+1)=x(:,n)+h*f(t(:,n),x(:,n));
    x(:,n+1)=x(:,n)+((h/2)*(f(t(:,n),x(:,n))+f(t(:,n+1),ytilde(:,n+1))));
    end
end

