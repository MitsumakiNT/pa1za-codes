string = "Rubyの勉強, Railsの学習"
md = string.match(/.*の勉強/)
p md[0]
=> "Rubyの勉強"

string = "Rubyの勉強, Railsの勉強"
md = string.match(/.*の勉強/)
p md[0]
=> "Rubyの勉強, Railsの勉強"