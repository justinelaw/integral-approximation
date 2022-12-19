format long;
h = 0.05;
a = 0;
b= 1;
n = (b-a)/h;
f = @(x) x*exp(-x); 

j = a; %x_0
k = a+h; %x_1
t = 0;

%composite trapezoidal rule
for i=1:n
    t = t + f(j) + f(k);
    j = j + h;
    k = k + h;
end

t = t*h;
t = t/2;
disp(t);

%composite simpson's 1/3 rule
p = a;
q = a+h;
r = h*2;
s = 0;

for i=1:(n/2)
    s = s + f(p) + 4*f(q) + f(r);
    p = p + 2*h;
    q = q + 2*h;
    r = r + 2*h;
end

s = s*h;
s = s/3;
disp(s);

%gaussian quadrature rule
u = a;
v = h;
g = 0;

for i=1:n
    g = g + f(((v-u)/2)*(-sqrt(1/3)) + (u+v)/2) + f(((v-u)/2)*(sqrt(1/3)) + (u+v)/2);
    u = u + h;
    v = v + h;
end

g = g*h/2;
disp(g);

%actual value of f = @(x) x*exp(-x); 
syms x;
f = @(x) x*exp(-x); 
z = int(f, x, [0, 1]);
z = double(z);
disp(z);

%trapezoid rule is the worst estimation while CQR is the best estimation
%because trapezoid rule has the largest error
disp(abs(t-z));
disp(abs(s-z));
disp(abs(g-z));

