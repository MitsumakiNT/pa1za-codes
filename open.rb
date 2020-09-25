words = []

puts '好きな数だけ単語を入力してください'
puts '最後はEnterだけの空行にしてください'

while word = gets.chomp
    break if word.empty?
    words << word
end

puts '単語をアルファベット順に並べます'
puts words.sort

##or

words = []
word =

puts '好きな数だけ単語を入力してください'
puts '最後はEnterだけの空行にしてください'

while word != ""
  word = gets.chomp
end

puts '単語をアルファベット順に並べます'
puts words.sort
