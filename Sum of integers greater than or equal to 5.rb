num = gets.to_i
sum = 0

for i in 1..num
  input = gets.to_i
  if input >= 5
    sum = sum + input
  end
end

puts sum