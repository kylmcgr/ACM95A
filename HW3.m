R=2:30;
fun = @(z) (z+log(z))./(z.^3.+1);
par = @(t) fun(R.*cos(t)+R.*1i.*sin(t));
b = abs(integral(par,-pi/2,pi/2,'ArrayValued',true));

a = R.*pi.*(R+abs(log(R))+pi)./abs(R.^3-1);

plot(R,a,R,b)