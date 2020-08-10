function [t,x] = odeMidPointEXP(f,t,x0)

%odeMidPointEXP Is a function that calculates the numerical solution for an
%initial value problem via explicit Midpoint method. It works by making the
%calculations with a midpoint slope.
%   This function receives the differential equation, the step size and the
%   initial value to determine the required values.

h=t(2)-t(1);
N=size(t,2)-1;
x=[x0,zeros(4,N)];
x(:,1)=x0;

    for n=1:N
    x(:,n+1)=x(:,n)+h*f(x(:,n)+(h/2),x(:,n)+((h/2)*f(t(:,n),x(:,n))));
    end
end

