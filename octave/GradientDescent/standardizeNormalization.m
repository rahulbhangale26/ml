function[X, mu, sigma] = standardizeNormalization( X )
  mu = mean(X);
  sigma = ( sum( ( X - mu ) .^ 2 ) ./ size( X, 1 ) ) .^ (1/2);
  X = ( X - mu ) ./ sigma;
endfunction