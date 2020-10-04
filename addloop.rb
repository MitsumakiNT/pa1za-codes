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

#result
# 2
# 4
# 2
# 4
# 2
# 4
# 2
# 4
# 2
# 4
# a
# 2
# 4
# b
# 2
# 4
# c