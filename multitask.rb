def pathfinder(word_ary, correct_ary, success_str)
  lists = []
  count = 0
  while true do
    word = word_ary.sample
    print word
    print ' '
    lists << word
    #　正解の配列より短い場合は評価しない
    if lists.length > correct_ary.length then
      count = count + 1
      # 配列から最後の4つを取り出す
      candidate = lists.last(correct_ary.length)
      # 最後の4つがppap配列と一致する場合はsuccessと返す
      if candidate == correct_ary then
        puts success_str
        puts '(' + count.to_s + '試行目)'
        break
      end
    end
  end
end

# 構成配列
word_ary = ['pen', 'apple', 'pineapple']

# 正解配列
correct_ary = ['pen', 'pineapple', 'apple', 'pen']

# 成功時に表示する文字列
success_str = 'ペンパイナッポーアッポーペン'

# 実行
pathfinder(word_ary, correct_ary, success_str)

#イニシャライズメソッドを書くべきか？

def likes(names)
  return "no one likes this" if names.empty?

  if names.count == 1
    "#{names[0]} likes this"
  elsif names.count == 2
    names.each { |n| }.join(" and ") << " like this"
  elsif names.count == 3
    "#{names[0]}, #{names[1]} and #{names[2]} like this"
  else
　　　others_count = names.count -2
    "#{names[0]}, #{names[1]} and #{others_count} others like this"   
  end
end

# 別回答（whenのがみやすい）

def likes(names)
  case names.size
  when 0 
    "no one likes this"
  when 1 
    "#{names[0]} likes this"
  when 2
    "#{names[0]} and #{names[1]} like this"
  when 3
    "#{names[0]}, #{names[1]} and #{names[2]} like this"
  else
    "#{names[0]}, #{names[1]} and #{names.size - 2} others like this"
  end
end

