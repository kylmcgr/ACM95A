t0=0;
tf=1;
dt=0.025;
t=0:dt:1;
N=(tf-t0)/dt;
f=@(t,y) (t^2-y^2)*sin(y);
y=zeros(2,N+1);
y(1,1)=1;
y(2,1)=1;

for n = 1:N
    y(1,n+1)=y(1,n)+dt*f(t(n),y(1,n));
    y(2,n+1)=y(2,n)+dt/2*(f(t(n),y(2,n))+f(t(n+1),y(2,n)+dt*f(t(n),y(2,n))));
end
[tOde,yOde] = ode45(f,[0,1],1);

figure
p1 = plot(t,yOde,'r-o');
hold on;
p2 = plot(t,y(1,:),'b-x');
p3 = plot(t,y(2,:),'g-*');
hold off;
legend([p1(1);p2;p3],'ode45','Euler','Heun');