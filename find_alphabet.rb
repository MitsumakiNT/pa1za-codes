X = gets.chomp
Y = gets.chomp
C = gets.chomp

if X.ord > Y.ord
    puts "false"
    elsif X.ord <= C.ord && Y.ord >= C.ord 
    puts "true"
else 
    puts "false"
end