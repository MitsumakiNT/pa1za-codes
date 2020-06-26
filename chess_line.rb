input = gets.chomp.split("")
if input == ["O", "O", "O", "O", "O"]
    puts "O"
    elsif input == ["X", "X", "X", "X", "X"] 
    puts "X"
    elsif input == [".",".",".",".",".","."]
    puts "."
else 
    puts "D"
end