num = gets.chomp.to_i

array = {}

(1..num).each do
  line = gets.chomp.split(' ')
  array[line[1].to_i] = line[0]
end

na = array.sort

na.each do |ele|
  puts ele[1]
end