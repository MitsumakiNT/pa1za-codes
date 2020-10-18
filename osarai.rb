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