#１行から複数要素取得
line = gets.split(' ')

# 複数行に一つずつ要素を取得する
line = readlines.map(&:chomp)

# 複数行に複数要素を取得
lines = []
while line = gets
    lines << line.chomp.split(' ')
end