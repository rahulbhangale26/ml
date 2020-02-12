function[cost] = Cost(X, y, weights)
  m = length(y);
  cost =  ( ( sum( ( ( X * weights )  - y ) .^ 2 ) / ( 2 * m ) ) );
end