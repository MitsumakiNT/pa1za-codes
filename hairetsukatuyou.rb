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