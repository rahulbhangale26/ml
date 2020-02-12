function[weights, cost_history] = GradientDescent(X, y, learnRate, iteration )

  m = length(y);
  X = [ones( m, 1), X];
  weights = zeros(length(X(1,:)), 1);

  for i=1:iteration
    for j=1:length(weights)
        temp_weights(j, 1) = weights(j, 1) - ( sum( ( ( X * weights ) - y ) .* X(:, j ) ) * learnRate / m );
    end
    weights = temp_weights;
    cost_history(i) = Cost(X, y , weights);
  end
  
end