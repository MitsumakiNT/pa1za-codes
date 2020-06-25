data = gets.split(" ").map(&:to_i)


    y = data[0] #西暦
    m = data[1] #月
    d = data[2] #日

    gengou = 0
# ・明治は1912年7月29日まで
# ・大正は1912年7月30日から1926年12月24日まで
# ・昭和は1926年12月25日から1989年1月7日まで
# ・平成は1989年1月8日から2019年4月30日まで
# ・令和は2019年5月1日から

if  y <= 1911
    gengou = "明治"
    elsif y == 1912 && m <= 7 && d <= 29
    gengou = "明治"
    elsif y == 1912 && m == 7 && d >= 30
    gengou = "大正"
    elsif y >= 1912 && y <= 1926 && m <= 11
    gengou = "大正"
    elsif y == 1926 && m == 12 && d <= 24
    gengou = "大正"
    elsif y == 1926 && m == 12 && d >= 25
    gengou = "昭和"
    elsif y >= 1927 && y <= 1988 
    gengou = "昭和"
    elsif y == 1989 && m == 1 && d <= 7
    gengou = "昭和"
    elsif y >= 1989 && y <= 2018
    gengou = "平成"
    elsif y == 2019 && m <= 4
    gengou = "平成"
    elsif y == 2019 && m >= 5
    gengou = "令和"
else
    gengou = "令和"
end
    
    puts "#{gengou}年#{m}月#{d}日"
    
    