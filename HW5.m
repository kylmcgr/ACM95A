%{
f=@(x) (x.^3).*sin(2*x)./((x.^2+1).^2);
I=integral(f,0,Inf);
disp(I)
%}

tspan1 = [1 0.2];
tspan2 = [1 2];
f=@(t,y) -2/t*y+t-1+1/t;
y0 = 1/3;
[t1,y1] = ode45(f,tspan1,y0);
[t2,y2] = ode45(f,tspan2,y0);
t = [t1 t2];
y = [y1 y2];
yExact=@(t) 1/4.*t.^2-1/3.*t+1/2-1/12.*t.^-2;
figure
p1 = plot(t,yExact(t),'r-o');
hold on;
p2 = plot(t,y,'b-x');
hold off;
legend([p1(1);p2],'Exact','Numerical');

figure
p2 = semilogy(t,abs(yExact(t)-y));