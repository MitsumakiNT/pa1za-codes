string_1 = "samurai\n"
string_2 = "samurai\r\n"
string_3 = "samurai\r"
p string_1.chomp
=> "samurai"
p string_2.chomp
=> "samurai"
p string_3.chomp
=> "samurai"