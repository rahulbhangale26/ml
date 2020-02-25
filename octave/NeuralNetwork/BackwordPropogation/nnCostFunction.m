function[J grad] = nnCostFunction( nn_params, input_layer_size, hidden_layer_size, num_labels, X,  y, lambda )


  Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));

  Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
                 num_labels, (hidden_layer_size + 1));
                 
  X = [ones( size(X, 1), 1 ) X];
  m = size( X, 1 ); 
  z1 = X * Theta1';
  A1 = Sigmoid( z1 );
  A1 = [ones( size(A1, 1), 1 ) A1];
  z2 = A1 * Theta2';
  A2 = Sigmoid( z2 );
  I = eye( size( A2, 2 ) );
  
  Theta1_grad = zeros(size(Theta1));
  Theta2_grad = zeros(size(Theta2));
  
  for i=1:m
    Y(i,:) = I(y(i),:);
  endfor
  
  cost = -1/m * (  sum( sum( ( Y .* log( A2 ) + ( 1- Y ) .* log( 1- A2 ) ) ) ) );
  
  regularlizationCoe = ( sum( sum( Theta1(:, 2:end) .^ 2, 2 ) )  + sum( sum( Theta2(:, 2:end) .^ 2, 2 ) ) ) * ( lambda / ( 2 * m ) );
  cost = cost + regularlizationCoe;
  J = cost;

  sigmaL = A2 - Y;
  sigma1 = ( ( sigmaL * Theta2 ) .* A1 .* ( 1 - A1 ) )(:, 2:end);

  Delta_1 = sigma1' * X;
  Delta_2 = sigmaL' * A1;
  
    
  Theta1_grad = ( Delta_1 + lambda*[zeros(size(Theta1,1), 1) Theta1(:, 2:end)] ) / m;
  Theta2_grad = ( Delta_2 + lambda*[zeros(size(Theta2,1), 1) Theta2(:, 2:end)] ) / m;

  grad = [Theta1_grad(:) ; Theta2_grad(:)];
endfunction