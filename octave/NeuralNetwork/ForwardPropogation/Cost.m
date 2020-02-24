function[Cost] = Cost(X, Theta1, Theta2, y)
  prediction = Predict( X, Theta1, Theta2 );
  [p_val, prediction] = max( prediction, [], 2);
  Cost =  -1 / length(y) * ( y' * log( prediction ) ) + ( ( 1- y )' * log( 1- prediction ) );
endfunction