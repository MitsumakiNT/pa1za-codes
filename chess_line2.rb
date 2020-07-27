winner1 = ["O","O","O","O","O"]
winner2 = ["X","X","X","X","X"]
winner3 = [".",".",".",".","."]
a = 0
for i in 1..5
  input = gets.chomp.split("")
  if input == winner1 
    puts "O"
    elsif input == winner2
    puts "X"
    elsif input == winner3
    puts "."
    else
    a = a + 1
    end
end

if a == 5
    puts "D"
end
    