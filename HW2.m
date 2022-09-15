function [X, Y] = HW2(z)
    x = z(1);
    y = z(2);
    basex = (1-x^2-y^2)/(x^2+(y+1)^2);
    basey = (2*x)/(x^2+(y+1)^2);
    if and(basey == 0, basex <= 0)
        error('Error! z=(%f,%f) belongs to the branch cut: exponent base is in negative reals',x,y)
    end
    magz = sqrt(basex^2+basey^2);
    logz = log(magz);
    argz = sign(basey)*acos(basex/magz)+2*pi;
    X = exp(1/2*logz)*cos(1/2*argz);
    Y = exp(1/2*logz)*sin(1/2*argz);
end
