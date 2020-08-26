require 'date'
date = DateTime.now #現在datetimeオブジェクトというrubyに内臓されているオブジェクトを呼び出す

# 年月日
p date.strftime("%Y年%m月%d日")

p date.strftime("%y年%m月%d日")

# 日/月/年(2桁)
p date.strftime("%x")

# 年月日と時間
p date.strftime("%Y年%m月%d日 %H:%M:%S")

# 年-月-日と曜日
p date.strftime("%Y-%m-%d(%a)")

# タイムゾーンを付与
p date.strftime("%Y-%m-%d %H:%M:%S %Z")

# 曜日、月、日付 時間
p date.strftime("%a %b %d %H:%M:%S %Z %Y")

# 曜日を日本語に変更する場合
dw = ["日", "月", "火", "水", "木", "金", "土"]
p date.strftime("%Y/%m/%d(#{dw[date.wday]})")

str = %(Programming language "Ruby")
puts str
# => Programming language "Ruby"

ruby = "Ruby"
str2 = %(Programming language "#{ruby}")
puts str2
# => Programming language "Ruby"