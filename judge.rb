ary = [1, 3, 5, 6, 8]
#2, 5のいずれかが含まれる
list = [2, 5]
(list - ary).size < list.size

#2, 5の両方が含まれる
(list - ary).empty?

ary = [1, 3, 5, 6, 8]
# 2, 5のいずれかが含まれる
[2, 5].any? {|i| ary.include?(i)}

# 2, 5の両方が含まれる
[2, 5].all? {|i| ary.include?(i)}

# 2〜5のいずれかが含まれる
ary.any? {|i| i.between?(2, 5)}

module Include
  refine Array do
    # all: trueの場合
    #   listの値全てがselfに含まれているか判定
    # all: falseの場合
    #   listの値のいずれかがselfに含まれているか判定
    def include?(*list, all: true)
      method = all ? :all? : :any?
      list.__send__(method) {|i| super(i)}
    end
  end
end