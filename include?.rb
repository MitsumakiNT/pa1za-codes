letter = gets.chomp
spell = gets.chomp

check = spell.include?(letter)
if check == true
    puts "YES"
else
    puts "NO"
end
