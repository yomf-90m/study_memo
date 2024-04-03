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



for文とeachメソッドの繰り返し処理の違い
→for文は配列の要素を受け取る変数や、for文の中で作成したローカル変数がfor文の外でも使える。
[例] for文の場合
numbers = [1, 2, 3, 4]
sum = 0
for n in numbers
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end

# n はループが終了したときに4（numbersの最後の要素）の値を持ち、
# sum_value は最後の要素4が偶数であるために 4 * 10 すなわち 40 が代入される
# 従って、n の値は 4、sum_value の値は 40 となる
n         #=> 4
sum_value #=> 40

→eachメソッドはブロックパラメータやブロック内で作成した変数をブロックの外では参照できない。
[例] eachメソッドの場合
numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end
sum       #=> 64
n         #=> undefined local variable or method `n' for main:Object (NameError)
sum_value #=> undefined local variable or method `sum_value' for main:Object (NameError)
