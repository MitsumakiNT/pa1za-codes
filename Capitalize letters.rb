input = gets.split(" ").map(&:to_i)

a = input[0]
b = input[1]

str = gets.chomp.split("")
# p str
# ["t", "h", "i", "s", " ", "i", "s", " ", "a", " ", "p", "e", "n"] 配列の確認
str.each_with_index do |s,t|
    #文字列の客観的なインデックス番号がt
    if t >= (a - 1) && t <= (b - 1)
        print s.upcase
    else 
        print s
    end
    # print s
    # print t
    # puts ""
end