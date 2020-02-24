function[p] = Predict(X, Theta1, Theta2)
  Z1 = X * Theta1;
  a1 = Sigmoid(Z1);
  a1 = [ones( size(a1, 1), 1) a1];
  Z2 = a1 * Theta2;
  p = Sigmoid(Z2);
  [p_vals, p] = max(p, [], 2);
endfunction