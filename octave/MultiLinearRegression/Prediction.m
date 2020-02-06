function[y] = Prediction(X, weights)
  y = [ ones(length(X(:,1)), 1), X] * weights;
end