string = "Rubyの勉強, Railsの学習"
md = string.match(/.*の勉強/)
p md[0]
=> "Rubyの勉強"

string = "Rubyの勉強, Railsの勉強"
md = string.match(/.*の勉強/)
p md[0]
=> "Rubyの勉強, Railsの勉強"

reg = /の勉強/.match("Railsの勉強をしよう")
p reg.pre_match
=> "Rails"

reg = /の勉強/.match("Railsの勉強をしよう")
p reg.post_match
=> "をしよう"

p "xxxabcxxxx".slice(/a../)
=> "abc"

# マッチしない場合はnilを返す
p "xxxxxxx".slice(/a../)
=> nil

# slice!はレシーバからマッチした部分を削除
a = "xxxxaaaxxx"
a.slice!(/a../)
=> "aaa"
p a
=> "xxxxxx"

p /aaa/ =~ "aaabbb"
=> 0
p /aaa/ =~ "rubyaaa"
=> 4
# マッチしない場合はnilを返す
p /aaa/ =~ "ruby"
=> nil