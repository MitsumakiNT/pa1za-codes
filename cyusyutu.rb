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