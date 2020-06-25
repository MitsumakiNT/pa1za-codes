num = gets.to_i
name = []

for i in 1..num
  name = gets.chomp.split(" ")
  number = name[1].to_i + 1
  puts "#{name[0]} #{number}"
end