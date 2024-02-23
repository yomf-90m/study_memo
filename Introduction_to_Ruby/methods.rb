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


sprintfメソッド
→指定されたフォーマットの文字列を作成するメソッド

[例1] 1.2の小数第３位まで数字を表示する文字列を作成
sprintf('%0.3f', 1.2) #=> "1.200"

[例2] フォーマット文字列 % 表示したいオブジェクト の形式でも同じ結果が得られる
'%0.3f' % 1.2 #=> "1.200"

[例3] 表示したいオブジェクトを複数渡すこともできる
sprintf('%0.3f + %0.3f', 1.2, 0.48) #=> "1.200 + 0.480"
'%0.3f + %0.3f' % [1.2, 0.48]       #=> "1.200 + 0.480"
