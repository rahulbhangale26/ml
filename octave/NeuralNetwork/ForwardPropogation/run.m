input_layer_size = 400;
hidden_layer_1_size = 25;
output_layer_size = 10;

load('ex3data1.mat');

Theta1 = randn( input_layer_size + 1, hidden_layer_1_size ) * ( 2 / input_layer_size ) ^ 0.5;
Theta2 = randn( hidden_layer_1_size + 1, output_layer_size ) * ( 2 / input_layer_size ) ^ 0.5;
m = length(y);
X_with_bias = [ones( m, 1 ) X];

Cost = Cost( X_with_bias, Theta1, Theta2, y);
 
p = Predict(X_with_bias, Theta1, Theta2 );
