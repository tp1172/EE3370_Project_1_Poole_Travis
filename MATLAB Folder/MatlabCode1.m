% EE3370 Project 1
% MATLAB code for Version Control and MATLAB Plotting
% Travis Poole
% 02/25/15

clc      % Clear screen 
clear    % Clear all variables
A = 3; f= 1000; omega = 2*pi*f; 
angle = (33*pi)/180; T=1/f;
t=linspace(-3*T,3*T,1000);
x_t=3*cos(omega*t+angle);
f_t=cos(omega*t).*sin(omega*t);
subplot(4,1,1)
plot(t,x_t, 'linewidth',2);grid on
subplot(4,1,2)
u_t=heaviside(t);
u_ts=heaviside(t-1);
plot(t,u_t, 'linewidth',2);grid on
subplot(4,1,3)
plot(t,x_t.*u_t, 'linewidth',2);grid on
subplot(4,1,4)
plot(t,f_t.*u_ts, 'linewidth',2);grid on