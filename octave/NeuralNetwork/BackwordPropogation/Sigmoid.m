function[sigmoid] = Sigmoid(z)
  sigmoid = 1 ./ ( 1 + ( e .^ -z ) );
endfunction