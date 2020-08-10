function f=acc(t,x)
% function for acceleration and velocity vector
z=0.25;% suspension damping ratio, 0.6 for race car typical value
mu=100;% unsprung mass
ms=301.2;% sprung mass
ks=30000;% suspension stiffness
ku=29530;% tire stiffness
cs=2*sqrt(ks*ms)*z;% suspension damping coefficient

MASS=[ms,0;  % matrix of masses
      0,mu];  
DAMP=[cs,-cs;% matrix of damping coeffcients
     -cs,cs];
STIFF=[ks,-ks;% matrix of stiffness
      -ks,ks+ku];

velocity=[x(1);x(2)];
displacement=[x(3);x(4)];
acceleration=(MASS)\(-(DAMP*velocity)-(STIFF*displacement));  
f=[acceleration;velocity];

% the values for the velocity are obtained from the 1st and 2nd
% values from the solutions or the initial values.
% the values for the x displacement are obtained from the 3rd and
% 4th value of the solutions or the initial x0 vector.
end

