string_1 = "samurai\n"
string_2 = "samurai\r\n"
string_3 = "samurai\r"
p string_1.chomp
=> "samurai"
p string_2.chomp
=> "samurai"
p string_3.chomp
=> "samurai"

string = "samurai"
p string.chop
=> "samurai"

string = "hello, samurai"
p string.delete("l")
=> "heo, samurai"

string = "    hello, samurai"
p string.lstrip
=> "hello, samurai"

string = "hello, samurai  \r\n"
p string.rstrip
=> "hello, samurai"

string = "  hello, samurai  \r\n"
p string.strip
=> "hello, samurai"

string = "samurai"
p string.slice(1, 3)   
=> "amu"

string = "hello, samurai"
p string.slice(7..10)  # 7文字目から10文字目まで
=> "samu"

string = "hello, samurai"
p string.slice!(1)
=> "e"
p string
=> "hllo, samurai"