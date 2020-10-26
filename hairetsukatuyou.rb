#配列のindexを２つ指定してその中身を入れ替える
num = gets.to_i
array = []
for i in 1..num
 input = gets.to_i
 array.push(input)
end
# p array [1, 10]
line = gets.split(' ').map(&:to_i)
# p line [1, 2]
index_alpha = line[0] - 1 #要素番号１個目
index_beta = line[1] - 1 #要素番号２番目

a = array[index_alpha] #入れ替えたい番号１個目
# p a 1
b = array[index_beta] #入れ替えたい番号２個目
# p b 10
#{a: index_alpha, b: index_beta}
a,b = b,a#数字入れ替え

array[index_alpha] = a

array[index_beta] = b
array.each do |s|
    puts s
end

#配列のindexを指定して対応するindexに数値をいれる
array = []
times = gets.to_i
for i in 1..times
  num = gets.to_i
  array.push(num)
end
line = gets.split(" ").map(&:to_i)
n = line[0]
B = line[1]
array.insert(n,B)
array.each do |s|
    puts s
end

#台風の襲来日数の間隔を計算　→　特に苦手気味な処理なので残す、indexの指定とループの処理
times = 5
typhoon = []
for i in 0..4
  day = gets.to_i
  typhoon.push(day)
  if i >= 1
      ans = typhoon[i] - typhoon[(i - 1)]
      puts ans
  end
end

#配列作成簡略化
numbers = [12, 34, 56, 78, 90]

# ここに、各要素を3倍にして新しい配列を作成するコードを記述する
numbers2 = numbers.map do |num |
    num * 3
end

p numbers2

#二次元配列作成
numbers = Array.new(4).map{Array.new(3,1)}　#→mapを使わないと個々の配列を独立して操作できない
p numbers
# [[1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1, 1]]

#三次元配列作成
tri = (0...a).map{(0..b).map{Array.new(c)}}

lines = readlines.map{|line| line.split(' ')}
lines = readlines.map{|line| line.split(' ').map(&:to_i)}