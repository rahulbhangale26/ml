function[p] = Sigmoid(z)
  p = 1 ./ ( 1 + ( e .^ ( -z ) ) );
endfunction