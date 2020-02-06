function[cost] = Cost( prediction, y)
  cost = 0.5* length(y) * sum( prediction - y ) 
end