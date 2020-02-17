function[ theta, cost_history ] = gradientDescent( X, y, theta, iterations, learnrate )
 m = length( y );
 X_with_ones = [ones( m, 1 ) X] ;
 for i=1:iterations
   for j=1:length(theta)
     temp_theta(j, :) = theta(j, :) - ( ( sum( ( ( X_with_ones * theta ) - y ) .* X_with_ones( :, j ) ) ) * ( learnrate / m ) );
   end
   theta = temp_theta;
   cost_history(i) = costFunction(X, y, theta );
 end
 
endfunction