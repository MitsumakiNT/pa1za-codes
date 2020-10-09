(1..5).each do |i|                # —— (1)
  puts i*i
end

(1..5).map{|i| i*i }              # —— (1)と同じ

%w(a b c).map{|char| char.upcase} # —— (2)
%w(a b c).map(&:upcase)           # —— (2)と同じ

params = {}
params[:user] ={ name: "Onsen Ruby", email: "onsenruby@onsen.com" } 
p params 
# => {:user=>{:name=>"Onsen Ruby", :email=>"onsenruby@onsen.com"}}
p params[:user][:email]  
# => "onsenruby@onsen.com"

count = 1

("aa".."az").each{|str|
  print(str + "¥n");

  count += 1
  if count > 10 then
    break
  end
}


print("¥n")

# for 文
for i in [1,2,3,4,5]
  next if i.odd?
  puts i
end
# while 文
j = 0
while j < 5 do
  j = j + 1
  next if j.odd?
  puts j
end
# until 文
k = 0
until k >= 5 do
  k = k + 1
  next if k.odd?
  puts k
end
# loop 文
l = 0
loop do
  break if l >= 5
  l = l + 1
  next if l.odd?
  puts l
end

for v in ["a","b","c"]
  i = 0
  until i >= 5 do 
    i+=1
    next if i.odd?
    puts i
  end
  puts v
end

if ['123', 'abc', 'kkk'].include? test
  ...
end

if ['123', 'abc', 'kkk'].index test
  ...
end

case test
  when '123', 'abc', 'kkk'
    ...
  end

  require 'ostruct'

  students = []
  students << OpenStruct.new({name: "siman", eng: 90, math: 90, science: 90, ave: 90})
  students << OpenStruct.new({name: "hoge", eng: 80, math: 70, science: 30, ave: 60})
  students << OpenStruct.new({name: "piyo", eng: 0, math: 100, science: 20, ave: 40})
  
  group = students.group_by do |student|
    case student.ave
    when 0...20
      "E"
    when 20...40
      "D"
    when 40...60
      "C"
    when 60...80
      "B"
    when 80..100
      "A"
    end
  end

  group.each do |rank, students|
    students.each do |student|
      puts "#{student.name}さんのランクは#{rank}です。"
      puts "英語の得点 : %3d点" % [student.eng]
      puts "数学の得点 : %3d点" % [student.math]
      puts "科学の得点 : %3d点" % [student.science]
      puts "    平均点 : %3d点" % [student.ave]
      puts "------------------------------------------"
    end
  end