function[ cost ] = costFunction( X, y, theta )
  m = length(y);
  p = predict( X, theta );
  cost = -1 / m * ( y' * log( p ) + ( 1 - y )' * log( ( 1 - p ) ) );
endfunction