times = gets.to_i
ans = 0
for i in 1..times
  line = gets.split(" ").map(&:to_i)
  a = line[0]
  b = line[1]
  
  if a == b
      input = a * b
  else
      input = a + b
  end
  ans = ans + input
end
  p ans