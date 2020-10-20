#value参照でソート
math = {"あだち" => 40, "いいだ" => 12, "えんどう" => 99}
math.sort_by{|k,v| v }

#標準入力別解
lines = readlines.map{|line| line.split(' ')}
lines = readlines.map{|line| line.split(' ').map(&:to_i)}