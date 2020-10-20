#value参照でソート
math = {"あだち" => 40, "いいだ" => 12, "えんどう" => 99}
math.sort_by{|k,v| v }

#標準入力別解
lines = readlines.map{|line| line.split(' ')}
lines = readlines.map{|line| line.split(' ').map(&:to_i)}

#例題、お一人様一回限り
times = gets.to_i
names = []
for i in 1..times
  name = gets.chomp
  names.push(name)
  counter = names.group_by(&:itself).map{ |k, v| [k, v.count] }.to_h
#   p counter
#   {"James"=>1, "Mary"=>1, "John"=>1}
  if counter[name] == 1
      puts "YES"
  else 
      counter[name] - 1
      puts "NO"
  end
end