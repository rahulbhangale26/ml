data = load( 'ex1data2.txt');
X = data(:, 1:2);
y = data(:, 3);
[X_norm, mu, sigma] = standardizeNormalization(X);
[ weights, cost_history ] = GradientDescent(X_norm, y, 0.01, 400 );
figure;
plot( 1: numel(cost_history), cost_history, '-b', 'LineWidth', 2 );
xlabel( 'Number of Iterations ' );
ylabel( 'Cost' );
predictions = prediction(X, weights, mu, sigma )