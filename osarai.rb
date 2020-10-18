# randメソッド
number = rand(1..10)
puts "#{number}ひき"
# ランダムな数字を出力

#if文
number = 1
if number == 1
    puts "好き！"
    elsif number == 2
    puts "？？"
else
    puts "嫌い"
end

# 条件分岐応用
a! = b #aとbが等しくない場合
# 例　10! == 1

# 複数ぎょう標準入力取得
while line = gets
	line.chomp!
	puts "#{line}が現れた"
end

#mapメソッド基本
results２ = numbers.map do |item|
  item * 10
end
p results2

numbers = Array.new(10, Array.new(3,1))
p numbers

numbers = Array.new(4).map{Array.new(3,1)}
p numbers

numbers[0][1] = 2
p numbers

enemy_img = [[0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0],
             [1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1],
             [1,0,0,1,1,1,0,0,0,1,1,1,0,0,0,1],
             [1,1,0,0,0,0,1,1,0,0,0,0,0,0,1,1],
             [0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0],
             [0,0,0,1,1,1,0,0,0,0,0,1,1,1,0,0],
             [0,0,0,0,1,1,1,0,0,0,0,0,0,1,1,1]]

enemy_img.each do |img|
    
    img.each do |dot|
        
        if dot == 1
            print "#"
        else
            print " "
        end
    end
    puts ""
end

#じしょトレーニング
num = gets.to_i
total_sum = 0
input_sum = 0
for i in 1..num
  input = gets.split(' ').map(&:to_i)
  if input[0] == input[1]
      input_sum = input[0] * input[1]
      
  else
      input_sum = input[0] + input[1]
  end
  
  total_sum = total_sum + input_sum
end

puts total_sum



num = gets.chomp.to_i

user2blood = {}

(1..num).each do
  array = gets.chomp.split(' ')
  user2blood[array[0]] = array[1]
end

user2blood.each do |key, value|
  puts "#{key} #{value}"
end

name = gets.chomp

total = gets.to_i

victims = {}

for i in 1..total
  input = gets.chomp.split(" ")
   victims[input[0]] = input[1]
end
# p victims

ans = victims.find{|k,v| k == name}
puts "#{ans[0]} #{ans[1]}"
    

# 二つのハッシュをまたいで判別
user = gets.chomp
u_total = gets.to_i

u_sort = {}
matcher = 0

(1..u_total).each do
  array = gets.chomp.split(' ')
  u_sort[array[0]] = array[1]
#   p array[0]
  if array[0] == user then
      matcher = array[1] #対応させたい血液型の抽出
  end
end
# p u_sort {"Kyoko"=>"B", "Rio"=>"O", "Tsubame"=>"AB", "KurodaSensei"=>"A", "NekoSensei"=>"A"}

f_total = gets.to_i

f_sort = {}
(1..f_total).each do 
    fortune = gets.chomp.split(" ")
            # p fortune   ["A", "red"]
            #             ["B", "green"]
            #             ["O", "blue"]
            #             ["AB", "yellow"]
    if fortune[0] == matcher
        puts fortune[1]
    end
end
