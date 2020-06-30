def join_arrays(a1,a2) #配列を組み合わせて和にする
  a1.to_a + a2.to_a
end

array1 = [10,20,30]
array2 = [40,50,60]

p join_arrays(array1,array2) 

# 出力結果は配列の配列