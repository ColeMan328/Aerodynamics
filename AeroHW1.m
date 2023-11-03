%Cole Stoumbaugh
clear;clc

V = linspace(70,250,1000);

q = .0011885*(V.^2);
cl = 2950 ./ (q.*1100);
cd = .025 + (.054.*(cl.^2));

ld = cl./cd;

figure(1);clf
plot(V,cl)
title('CL vs. Velocity')
xlabel('Velocity')
ylabel('CL')
figure(2);clf
plot(V,cd)
title('CD vs. Velocity')
xlabel('Velocity')
ylabel('CD')
figure(3);clf
plot(V,ld)
title('L/D vs. Velocity')
xlabel('Velocity')
ylabel('L/D')
