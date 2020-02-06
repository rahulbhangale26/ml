function[ weights ] = LinearRegression( X, y )
mean_X = mean(X);
mean_y = mean(y);

W2 = sum( ( X - mean_X ) .* ( y - mean_y ) ) / sum( ( X - mean_X ) .^ 2 );
W1 = mean_y - W2 * mean_X;
weights = [W1; W2];
end