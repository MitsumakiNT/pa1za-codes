input = gets.split(" ").map(&:to_i)
students = input[0] #生徒数
score = input[1] #合格点数

array = [] #合格した人を格納

for i in 1..students
   sum = gets.split(" ").map(&:to_i)
   get_score = sum[0] #テストの点数
   absent = sum[1] #欠席回数
   seiseki = get_score - absent * 5
   if seiseki < 0
       seiseki = 0
   end
   if seiseki >= score
       array.push(i)
   end
end

array.each do |s|
    puts s
end
