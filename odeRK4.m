function [t,x] = odeRK4(f,t,x0)

h=t(2)-t(1);
N=size(t,2)-1;
x=[x0,zeros(4,N)];
x(:,1)=x0;

    for n=1:N
     
    a=h*f(t(:,n),x(:,n));
    b=h*f(t(:,n)+(h/2),x(:,n)+(a/2));
    c=h*f(t(:,n)+(h/2),x(:,n)+(b/2));
    d=h*f(t(:,n)+h,x(:,n)+c);
     
    x(:,n+1)=x(:,n)+(1/6)*(a+(2*b)+(2*c)+d);
    end
end
    
   


