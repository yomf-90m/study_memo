繰り返し処理について
→ |n| の n はブロックパラメータと呼ばれ、eachメソッドから渡された配列の要素が入る。
[例] eachメソッドでの繰り返し処理
numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum += n
end
sum #=> 10



for文での繰り返し処理
for 変数 in 配列やハッシュ
  繰り返し処理
end

[例]
numbers = [1, 2, 3, 4]
sum = 0
for n in numbers
  sum += n
end
sum #=> 10
