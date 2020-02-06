function[ y ] = Prediction( X, weights )
  X = [ones(length(X), 1), X];
  y = X * weights;
end