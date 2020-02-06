function[cost] = Cost(prediction, y)
  cost = sum( ( prediction - y ) .^ 2 ) / length(y);
end