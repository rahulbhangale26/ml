function[p] = Predict(X, Theta1, Theta2)
  X_with_bias = [ones( size(X, 1), 1 ) X];
  z1 = X_with_bias * Theta1';
  A1 = Sigmoid( z1 );
  A1 = [ones( size(A1, 1), 1 ) A1];
  z2 = A1 * Theta2';
  A2 = Sigmoid( z2 );

[p_vals p] = max(A2, [], 2);


endfunction