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