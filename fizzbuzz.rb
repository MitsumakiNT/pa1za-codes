int = gets.to_i

for i in 1..int
  if i % 15 == 0
      puts "Fizz Buzz"       
  elsif i % 3 == 0
      puts "Fizz"
        
  elsif i % 5 == 0
      puts "Buzz"
  else 
      puts "#{i}"
  end
end

# another version

int = gets.to_i

(1..int).each do |i|


    if i % 15 == 0
        puts "Fizz Buzz"
    elsif i % 3 == 0
        puts "Fizz"
    elsif i % 5 == 0 
        puts "Buzz"
    else
        puts i
    end

end