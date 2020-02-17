data = load('ex2data1.txt');

X = data(:, 1:2);
y= data(:,3);

theta = [-24; 0.2; 0.2];
[ theta, costs] = gradientDescent(X, y, theta, 200, 0.000001);
plot( costs,  "linewidth",2)
