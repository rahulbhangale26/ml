input_layer_size = 2499;
hidden_layer_1_size = 1500;
output_layer_size = 1;
num_labels = 1;

data = csvread('data.csv');

X = data(:, 1: size(data)(:,2)-1);
y = y = data(:, size(data)(:,2));

Theta1 = randn( hidden_layer_1_size, input_layer_size + 1 ) * 2 * 0.12;
Theta2 = randn( num_labels, hidden_layer_1_size + 1 ) * 2 * 0.12;
initial_nn_params = [Theta1(:) ; Theta2(:)];
nn_params = [Theta1(:) ; Theta2(:)];

pred = Predict(X, Theta1, Theta2);

fprintf('\nTraining Set Accuracy: %f\n', mean(double(pred == y)) * 100);
options = optimset('MaxIter', 500);

lambda = 2;
costFunction = @(p) nnCostFunction( p, input_layer_size, hidden_layer_1_size, num_labels, X, y, lambda);

[nn_params, cost] = fmincg(costFunction, initial_nn_params, options);

Theta1 = reshape(nn_params(1:hidden_layer_1_size * (input_layer_size + 1)), ...
                 hidden_layer_1_size, (input_layer_size + 1));

Theta2 = reshape(nn_params((1 + (hidden_layer_1_size * (input_layer_size + 1))):end), ...
                 num_labels, (hidden_layer_1_size + 1));
                
 
pred = Predict(X, Theta1, Theta2);

fprintf('\nTraining Set Accuracy: %f\n', mean(double(pred == y)) * 100); 