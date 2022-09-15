tspan=[1,2];
F=@(t,Y) [Y(2); 2/t^2*Y(1)+3-1/t^2];
Y0=[3;0];
[t,Y]=ode45(F,tspan,Y0);
y=Y(:,1);
yExact=@(t) t.^2.*log(t)+1/2.*t.^2+2./t+1/2;
figure
p1 = plot(t,yExact(t),'r-o');
hold on;
p2 = plot(t,y,'b-x');
hold off;
legend([p1(1);p2],'Exact','Numerical');

figure
p2 = semilogy(t,abs(yExact(t)-y));
