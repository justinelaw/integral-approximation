# Integral Approximation Using Numerical Analysis in MATLAB
 This project is for my Numerical Analysis class (UCR Math135B). We used three different numerical analysis methods in order to approximate the integral 
# $I = \int_0^1 x e^{-x} dx$ 

The analytical methods include the [Composite Trapezoidal Rule](https://ece.uwaterloo.ca/~dwharder/NumericalAnalysis/13Integration/comptrap/complete.html),
[Simpson's 1/3 Rule](https://en.wikipedia.org/wiki/Simpson%27s_rule), and the [Gaussian Quadrature Rule](https://en.wikipedia.org/wiki/Gaussian_quadrature).

These methods will then be compared with the actual value of the integral, which is 
I = 0.264241117657115


Since the error approximation for Gaussian Quadrature rule is the smallest out of all three methods used, the composite Gaussian Quadrature rule approximation is therefore the best approximation. Since the error approximation for the composite trapezoidal rule is the greatest out of all three methods, the composite trapezoidal rule approximation is thus the worst approximation out of the three methods used. The error approximation is obtained by taking the absolute value of the actual value, I, and subtracting it with each respective approximation. 




