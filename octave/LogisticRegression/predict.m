function[ prediction ] = predict( X, theta )
  m = size(X , 1);
  X = [ones( m, 1 ) X];
  prediction = sigmoid( X * theta );
endfunction