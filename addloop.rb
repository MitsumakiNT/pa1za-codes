(1..5).each do |i|                # —— (1)
  puts i*i
end

(1..5).map{|i| i*i }              # —— (1)と同じ

%w(a b c).map{|char| char.upcase} # —— (2)