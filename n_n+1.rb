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

puts "#{str[n - 1]} #{str[n]}" if str[n] #if文を後に書くことで１行にまとめる