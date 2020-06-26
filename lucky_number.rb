lucky = gets.to_i #当選番号

second = lucky % 10000#２等当選番号しも４桁

third = lucky % 1000#３等当選番号しも３桁

num = gets.to_i#買った枚数

for i in 1..num
  buy = gets.to_i #買った当選番号
  buy_second = buy % 10000 #当選番号しも４桁
  buy_third = buy % 1000 #当選番号しも３桁
  if buy == lucky
      puts "first" #一等
      elsif buy == lucky + 1 || buy == lucky - 1
      puts "adjacent" #前後賞
      elsif buy_second == second
      puts "second" #二等
      elsif buy_third == third
      puts "third" #三等
  else 
      puts "blank"
  end
end