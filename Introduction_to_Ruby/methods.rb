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



pメソッド
→pメソッドはputsメソッドと同じように改行を加えて出力する。
だだし、文字列を出力するとその文字列がダブルクオートで囲まれている点がputsメソッドと異なる。
また、pメソッドは引数で渡されたオブジェクトそのものがメソッドの戻り値になる。
改行文字を含む文字列を渡したとき改行文字が改行文字のまま出力される。
[例]
p 123
123
#=> 123                                           

p 'abc'
"abc"
#=> "abc"

[例] 改行文字を含む文字列を渡した場合
s = "abc\nefg"

p s
"abc\nefg"
=> "abc\nefg"



ppメソッド
→ppメソッドは大きくて複雑な配列やハッシュ、オブジェクトの内容を見やすく整形して出力する。
pメソッドでは内容がごちゃごちゃしていて確認しづらい時にppメソッドを使うと便利な場合がある。
pメソッドと同様にppメソッドも引数として渡したオブジェクトがそのままメソッドの戻り値になる。
[例]
# pメソッドではネストした配列が横並びになってしまい確認しづらい
p Encoding.aliases.take(5)
#=> [["BINARY", "ASCII-8BIT"], ["CP437", "IBM437"], ["CP720", "IBM720"], ["CP737", "IBM737"], ["CP775", "IBM775"]]

[例]
# ppメソッドを使うと配列が見やすく整形される
pp Encoding.aliases.take(5)
#=> [["BINARY", "ASCII-8BIT"],
#=> ["CP437", "IBM437"],
#=> ["CP720", "IBM720"],
#=> ["CP737", "IBM737"],
#=> ["CP775", "IBM775"]]

[例]
# 引数として渡したオブジェクトがそのままメソッドの戻り値になる
pp 'abc'
"abc"
#=> "abc"



→putsメソッドとprintメソッドは引数で渡されたオブジェクトに対してto_sメソッドを呼び出して文字列に変換している。
pメソッドとppメソッドはto_sメソッドではなくinspectメソッドを呼び出している。
文字列がダブルクオートで囲まれて出力されたのは、内部的にStringクラスのinpectメソッドが呼び出されその値が出力されている。
[例]
# 文字列をinspectすると、ダブルクオート付きの文字列が返る
'abc'.inspect #=> "\"abc\""
