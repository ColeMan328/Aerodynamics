%V = input('what is V')
clear all
mu = 1; gam = 10; V = 1.0 ;  %-4*3.173
x = -5:.02:5;
y = -3:.02:3;
for m = 1:length(x)
for n = 1:length(y)
   xx(m,n) = x(m); yy(m,n) = y(n);
   psis(m,n) = V * y(n) - mu * y(n)/(x(m)*x(m)+(y(n)+.01)*(y(n)+0.01)) ...
- (gam/4/pi)*log( (x(m)*x(m)+(y(n)+.01)*(y(n)+.01))/(mu/V) );
end
end
contour(xx,yy,psis,[-4:0.2:4],"k"); axis image
