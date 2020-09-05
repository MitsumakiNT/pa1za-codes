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