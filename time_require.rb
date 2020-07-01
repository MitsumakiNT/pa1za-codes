require 'date'
date = DateTime.now

# 年月日
p date.strftime("%Y年%m月%d日")

p date.strftime("%y年%m月%d日")

# 日/月/年(2桁)
p date.strftime("%x")

# 年月日と時間
p date.strftime("%Y年%m月%d日 %H:%M:%S")