メソッドの定義の基本
→Rubyではメソッドを呼び出す際に引数に過不足があるとエラーになる
def greet(country)
  if country == 'japan'
    'こんにちは'
  else
    'Hello'
  end
end

[例] 引数がちょうど
greet('us') #=> "Hello"

[例] 引数が足りない
# arguments(引数), given(与えられた引数の数), expected(期待している引数の数)の意味
greet 
#=> wrong number of arguments (given 0, expected 1) (ArgumentError)

[例] 引数が多い
greet('japan', 'us') 
#=> wrong number of arguments (given 2, expected 1) (ArgumentError)



メソッドの戻り値
→returnメソッドはメソッドを途中で抜け出す場合に使われることが多い
[例]
def greeting(country)  # (引数)は仮の引数名なのでメソッドを呼び出す際に違う名前の引数でも処理は動く

  # nil?はオブジェクトがnilの場合にtrueを返すメソッド
  # countryがnilならメッセージを返してメソッドを抜ける
  return 'countryを入力してください' if country.nil?
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end

# メソッドを呼び出す時の引数名が本引数名になる
greeting(nil)     #=> 'countryを入力してください'    
greeting('japan') #=> 'こんにちは'



デフォルト値付きの引数
→メソッドの引数の数を柔軟に変えるための方法の１つ
def メソッド名(引数1 = デフォルト値1, 引数2 = デフォルト値2)
  # 必要な処理
end

[例]
def greet(country = 'japan')
  if country == 'japan'
    'こんにちは'
  else
    'Hello'
  end
end

greet #=> "こんにちは"
greet('us') #=> "Hello"

→デフォルト値ありとデフォルト値なしの引数の引数を混在することができる
[例]
def default_args(a, b, c = 0, d = 0)
  "a=#{a}, b=#{b}, c=#{c}, d=#{d}"
end

default_args(1, 2)       #=> "a=1, b=2, c=0, d=0"
default_args(1, 2, 3)    #=> "a=1, b=2, c=3, d=0"
default_args(1, 2, 3, 4) #=> "a=1, b=2, c=3, d=4"

→デフォルト値は固定の値だけでなく、動的に変わる値や、他のメソッドの戻り値を指定することもできる
[例] システム日時や他のメソッドの戻り値をデフォルト値に指定する
def foo(time = Time.now, message = bar)
  puts "time: #{time}, message: #{message}"
end

def bar
  'BAR'
end

foo #=> time: 2023-12-25 15:25:54 +0900, message: BAR

→デフォルト値は左にある引数を指定することもできる
[例] y が指定されなけれは x の値を y に設定する
def point(x, y = x)
  puts "x=#{x}, y=#{y}"
end

point(3)     #=> x=3, y=3
point(3, 10) #=> x=3, y=10



?で終わるメソッド
→ ? で終わるメソッド名は真偽値(trueかfalse)を返すメソッドになっている。
  このようなメソッドを述語メソッドと言う。
[例] 空文字列であれはtrue, そうでなければfalse
''.empty?    #=> true
'abc'.empty? #=> false

[例] 引数の文字列が含まれていればtrue, そうでなければfalse
'watch'.include?('at') #=> true
'watch'.include?('ta') #=> false
'watch'.include?('in') #=> false

[例] 奇数ならtrue, そうでないならfalse
1.odd? #=> true
2.odd? #=> false

[例] 偶数ならtrue, そうでないならfalse
1.even? #=> false
2.even? #=> true

[例] オブジェクトがnilならtrue, そうでないならfalse
nil.nil?   #=> true
'abc'.nil? #=> false 
1.nil?     #=> false

[例] ３の倍数ならtrue, それ以外はfalseを返す
def multiple_of_three?(n)
  n % 3 == 0
end

multiple_of_three?(4) #=> false
multiple_of_three?(5) #=> false
multiple_of_three?(6) #=> true



!で終わるメソッド
→！で終わるメソッドは！がついていないメソッドよりも危険。
呼び出したオブジェクトの状態を変更してしまうメソッドのことを破壊的メソッドと呼ぶ。
a = 'ruby'

[例] upcaseだと変数aの値は変化しない 
a.upcase #=> "RUBY"
a        #=> "ruby"

[例] upcase!だと変数aの値も大文字に変わる
a.upcase! #=> "RUBY"
a         #=> "RUBY"

[例] 引数の内容を変更しない安全バージョンのメソッドの定義
def reverse_upcase(s)
  s.reverse.upcase
end

[例] 引数の内容を破壊的に変更してしまう危険バージョンのメソッドの定義
def reverse_upcase!(s)
  s.reverse!
  s.upcase!
end

s = 'ruby'

[例] 安全バージョンは引数として渡した変数sの内容はそのまま
reverse_upcase(s) #=> "YBUR"
s                 #=> "ruby"

[例] 危険バージョンは引数として渡した変数sの内容が変更される
s.reverse_upcase! #=> "YBUR"
s                 #=> "YBUR"



sprintfメソッド
→指定されたフォーマットの文字列を作成するメソッド
[例1] 1.2の小数第３位まで数字を表示する文字列を作成
sprintf('%0.3f', 1.2) #=> "1.200"

[例2] フォーマット文字列 % 表示したいオブジェクト の形式でも同じ結果が得られる
'%0.3f' % 1.2 #=> "1.200"

[例3] 表示したいオブジェクトを複数渡すこともできる
sprintf('%0.3f + %0.3f', 1.2, 0.48) #=> "1.200 + 0.480"
'%0.3f + %0.3f' % [1.2, 0.48]       #=> "1.200 + 0.480"
