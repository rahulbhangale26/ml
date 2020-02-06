data = load('ex1data1.txt');
X = data(:, 1);
y = data(:, 2)
figure;
plot(X, y, 'rx' );
weights = LinearRegression(X, y);
plot(X, Prediction(X, weights), '-');
cost( Prediction(X, weights), y )