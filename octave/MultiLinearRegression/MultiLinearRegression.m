function[ weights ] = MultiLinearRegression( X, y )
  X = [ ones(length(X), 1), X ];
  weights = pinv( X' * X ) * X' * y;
end