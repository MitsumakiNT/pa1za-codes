line = gets.split(' ').map(&:to_i)

# p line
# line =[入力A、入力B]

kaisuu = line[1]
shin_zandaka = line[0]
point = 0

for i in 1..kaisuu
  fee = gets.to_i #運賃入力
  if point >= fee #ポイントが運賃以上だったときの精算
      point = point - fee #ポイントはポイントから運賃を差し引き
      shin_zandaka = shin_zandaka #この時残高変更なし
  else
      shin_zandaka = shin_zandaka - fee
      point = point + fee * 0.1
  end
      
  print "#{shin_zandaka} #{point.to_i}"
  
  puts ""
end
  