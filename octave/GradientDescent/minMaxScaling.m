function[X, mu, sigma] = minMaxScaling(X)

 mu = zeros( 1, size(X, 2 ) );
 sigma = zeros( 1, size(X, 2) );
 mu = mu + mean(X);
 X = X - mu;
 sigma = sigma + ( max( X ) - min( X ) );
 X = X ./ sigma;
end
