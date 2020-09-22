def test1 (&block)
  str = ["A","B","C"]
  all_test(str,&block)
end

def test2 (&block)
  str = ["D","E","F"]
  all_test(str,&block)
end

def test3 (&block)
  str = ["G","H","I"]
  all_test(str,&block)
end

def all_test (str,&block)
  puts str[0]
  puts str[1]
  puts block.call(str[2])
end

print "What is the first number? "
first_number = gets.chomp

print "What is the second number? "
second_number = gets.chomp

sum = first_number + second_number

print sum