num = gets.to_i
word = gets.chomp.split("")

a = word[num - 1]
b = word[num]

if num == word.length
    print ""
else
    print "#{a} #{b}"
end

# another version ↓

n = gets.chomp.to_i
str = gets.chomp

puts "#{str[n - 1]} #{str[n]}" if str[n] 

word_1 = "hotter"
word_2 = "hot"
word_3 = "hottest"
 
p word_1 <=> word_2
=> 1
p word_2 <=> word_3
=> -1
p word_1 <=> word_3
=> -1