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