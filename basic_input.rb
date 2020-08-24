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

string = "samurai"
p string.rpartition("u")
=> ["sam", "u", "rai"]

word_1 = "hot"
word_2 = "hotter"
word_3 = "hottest"

p word_1 < word_2 => true
p word_1 > word_2
=> false

string = "samurai, ruby, rails"
p string.split(",")
=> ["samurai", " ruby", " rails"]

string = "samurai"
p string.rpartition("u")
=> ["sam", "u", "rai"]

# 文字列がない場合は空白文字を用いて分割される
p string.rpartition("o")
=> ["", "", "samurai"]

string_1 = "Hello"
p string_1.empty?
=> false

string_2 = ""
p string_2.empty?
=> true

string = "samurai, ruby"
p string.start_with?("sa")
=> true

string = "samurai, ruby"
p string.end_with?("by")
=> true

string = "samurai, ruby"
p string.include?("ruby")
=> true

string = "samurai, ruby"
p string.index("r")
=> 4   # 4文字目

# offsetを指定（○文字目から検索する）
string = "samurai, ruby"
p string.index("r", 5) # 5文字目から検索
=> 9 # 9文字目

string = "samurai, ruby"
p string.rindex("r")
=> 9   # 9文字目

# offsetを指定（末尾の○文字目から検索する）
string = "samurai, ruby"
p string.rindex("r", 5) # 末尾の5文字目から検索
=> 9 # 9文字目