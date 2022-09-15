t0=0;
tf=1;
dt=0.025;
t=0:dt:1;
N=(tf-t0)/dt;
f=@(t,y) (y^2+2*t*y)/(3+t^2);
y=zeros(2,N+1);
y(1,1)=1/2;
y(2,1)=1/2;

for n = 1:N
    y(1,n+1)=y(1,n)+dt*f(t(n),y(1,n));
    a=dt/(3+t(n+1)^2);
    b=dt*2*t(n+1)/(3+t(n+1)^2)-1;
    c=y(2,n);
    y(2,n+1)=(-b-sqrt(b^2-4*a*c))/(2*a);
end
[tOde,yOde] = ode45(f,[0,1],1/2);

figure
p1 = plot(t,yOde,'r-o');
hold on;
p2 = plot(t,y(1,:),'b-x');
p3 = plot(t,y(2,:),'g-*');
hold off;
legend([p1(1);p2;p3],'ode45','Euler','Backwards Euler');