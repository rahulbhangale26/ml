function[predictions]= prediction( X, weights, mu, sigma )
  
  X = ( X - mu ) ./ sigma;
  m = size(X, 1);
  X = [ones( m, 1), X];
  
  predictions = X * weights;
  
endfunction
