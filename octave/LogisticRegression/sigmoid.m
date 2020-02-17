function[sigmoid] = sigmoid(X)
  sigmoid = 1 ./ ( 1 + e .^ ( -X ) );
endfunction