#１行から複数要素取得
line = gets.split(' ')

# 複数行に一つずつ要素を取得する
line = readlines.map(&:chomp)

# 複数行に複数要素を取得
lines = []
while line = gets
    lines << line.chomp.split(' ')
end

# または

lines = readlines(chomp: true).map{|line| line.split(' ')}

# １行から数値として取得
line = gets.to_i

# １行に複数要素を数値として取得
line = gets.split(' ').map(&:to_i)

# 複数行に１行ずつ要素を数値として取得
line = readlines.map(&:to_i)

# 複数行に複数要素を数値として取得
lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end
p lines

# または
lines = readlines(chomp: true).map{|line| line.split(' ').map(&:to_i)}