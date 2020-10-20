#value参照でソート
math = {"あだち" => 40, "いいだ" => 12, "えんどう" => 99}
math.sort_by{|k,v| v }