x=linspace(-2,1,10^3);
y=linspace(-1.5,1.5,10^3);
[X,Y]=meshgrid(x,y);
k = zeros(10^3, 10^3);
for a = 1:10^3
    for b = 1:10^3
        z = 0;
        for n = 1:500
            z = z^2 + X(a, b) + Y(a, b) * 1i;
            k(a, b) = n;
            if abs(z) > 2
                break;
            end
        end
    end
end
figure;
imagesc(x, y, k);
axis equal;
axis([-2, 1, -1.5, 1.5]);

x=linspace(-0.748766713922161, -0.748766707771757,10^3);
y=linspace(0.123640844894862, 0.123640851045266,10^3);
[X,Y]=meshgrid(x,y);
k = zeros(10^3, 10^3);
for a = 1:10^3
    for b = 1:10^3
        z = 0;
        for n = 1:500
            z = z^2 + X(a, b) + Y(a, b) * 1i;
            k(a, b) = n;
            if abs(z) > 2
                break;
            end
        end
    end
end
figure;
imagesc(x, y, k);
axis equal;
axis([-0.748766713922161, -0.748766707771757, 0.123640844894862, 0.123640851045266]);
