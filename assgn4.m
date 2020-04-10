d=3;
%d is the degree
clc
n = 900;
l = 2;
cx=0;
cy=0;
tol = 1e-10;
x=linspace(cx-l,cx+l,n);
y=linspace(cy-l,cy+l,n);
[X,Y]=meshgrid(x,y);
Z=X+1i*Y;

for k=1:20
    Z=Z-(f(Z,d)./fprime(Z,d));
end
r=zeros(n,n);

for j=1:d
    root=exp(2*pi*1i/d)^j;
    Mj=abs(Z-root);
    mask=(Mj<=tol)*j;
    r=r+mask;
end
colormap(hsv);
imagesc(r)
shading flat;
axis('square','equal','off');
title('f(z)=z^3-1');

figure;
d=4;
%d is the degree
clc
n = 900;
l = 2;
cx=0;
cy=0;
tol = 1e-10;
x=linspace(cx-l,cx+l,n);
y=linspace(cy-l,cy+l,n);
[X,Y]=meshgrid(x,y);
Z=X+1i*Y;

for k=1:20
    Z=Z-(f(Z,d)./fprime(Z,d));
end
r=zeros(n,n);

for j=1:d
    root=exp(2*pi*1i/d)^j;
    Mj=abs(Z-root);
    mask=(Mj<=tol)*j;
    r=r+mask;
end
colormap(hsv);
imagesc(r)
shading flat;
axis('square','equal','off');
title('f(z)=z^4-1');

figure;
d=5;
%d is the degree
clc
n = 900;
l = 2;
cx=0;
cy=0;
tol = 1e-10;
x=linspace(cx-l,cx+l,n);
y=linspace(cy-l,cy+l,n);
[X,Y]=meshgrid(x,y);
Z=X+1i*Y;

for k=1:20
    Z=Z-(f(Z,d)./fprime(Z,d));
end
r=zeros(n,n);

for j=1:d
    root=exp(2*pi*1i/d)^j;
    Mj=abs(Z-root);
    mask=(Mj<=tol)*j;
    r=r+mask;
end
colormap(hsv);
imagesc(r)
shading flat;
axis('square','equal','off');
title('f(z)=z^5-1');

function y=f(x,d)
y=(x.^d)-1;
end

function y=fprime(x,d)
y=d*(x.^(d-1));
end