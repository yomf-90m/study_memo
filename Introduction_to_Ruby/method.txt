メソッドの戻り値
->returnメソッドはメソッドを途中で抜け出す場合に使われることが多い
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
