sprintfメソッド
→指定されたフォーマットの文字列を作成するメソッド
[例1] 1.2の小数第３位まで数字を表示する文字列を作成
sprintf('%0.3f', 1.2) #=> "1.200"

[例2] フォーマット文字列 % 表示したいオブジェクト の形式でも同じ結果が得られる
'%0.3f' % 1.2 #=> "1.200"

[例3] 表示したいオブジェクトを複数渡すこともできる
sprintf('%0.3f + %0.3f', 1.2, 0.48) #=> "1.200 + 0.480"
'%0.3f + %0.3f' % [1.2, 0.48]       #=> "1.200 + 0.480"



putsメソッド
→putsメソッドは最後に改行を加えて変数の内容やメソッドの戻り値を出力する。
putsメソッドの戻り値は nil になる。
改行文字を含む文字列を渡したとき改行して出力される。
[例]
puts 123
123
#=> nil                                           

puts 'abc'
abc
# => nil

[例] 改行文字を含む文字列を渡した場合
s = "abc\nefg"

puts s
abc
efg                                              
#=> nil


printメソッド
→printメソッドは改行を加えない。
改行文字を含む文字列を渡したとき改行して出力される。
[例]
print 123
123=> nil

print 'abc'
abc=> nil

[例] 改行文字を含む文字列を渡した場合
s = "abc\nefg"

print s
abc
efg=> nil
