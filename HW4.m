R = 1;
n = 10^4;
z0 = 0;
a0 = 1;
a1 = 1i;
a2 = -1/2;
z = randomDisk(z0,R,n);

f = @(x) (1+x).^1i;
g = @(x) a0+a1.*x+a2.*x.^2;

d = abs(f(z)-g(z));

scatter(real(z),imag(z),[],d,'filled')