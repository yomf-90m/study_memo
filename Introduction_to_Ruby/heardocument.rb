ヒアドキュメント(行指向文字列リテラル)
->文字列を途中で改行できる、複数行にわたる長い文字列を作成する場合に使用するとスッキリ書くことができる。
  ヒアドキュメントとは文字列をプログラミングに埋め込むためのもの。
  識別子は自由につけられる、この識別子の習慣として全て大文字にすることが多い。

# デフォルト
<<識別子
1行目
2行目
3行目
識別子

[例1]
a = <<TEXT
これはヒアドキュメントです。
複数行にわたる長い文字列を作成するのに便利です。
TEXT

puts a
#=> これはヒアドキュメントです。
#=> 複数行にわたる長い文字列を作成するのに便利です。

[例2] ヒアドキュメントの識別子としてHTMLを使う場合
<<HTML
<div>
  <img src="sample.jpg">
</div>
HTML


->識別子に - をつけると最後の識別子をインデント(半角スペース)させることができる。
　　　　メソッド内部でヒアドキュメントを使う場合などに便利。

[例] 識別子に - をつけた場合
def some_method
  <<-TEXT
     これはヒアドキュメントです。
     <<-を使うと最後の識別子をインデントさせることができます。
  TEXT
end

puts some_method
#=>   これはヒアドキュメントです。
#=>   <<-を使うと最後の識別子をインデントさせることができます。


->識別子に ~ をつけると内部の文字列をインデントさせても先頭の空白部分が無視される

[例] 識別子に ~ をつけ、バックスラッシュでインデントを入れた場合の例
def some_method
  <<~TEXT
    \  各行の行頭に半角スペースを2文字入れます。
    \  このとき行頭はバックスラッシュで指定します。
  TEXT
end

puts some_method
#=>   各行の行頭に半角スペースを2文字入れます。
#=>   このとき行頭はバックスラッシュで指定します。


[例] 識別子に ~ をつけた場合
def some_method
  <<~TEXT
     これはヒアドキュメントです。
     <<~を使うと内部文字列のインデントが無視されます。
  TEXT
end
puts some_method
#=> これはヒアドキュメントです。
#=> <<~を使うと内部文字列のインデントが無視されます。


->ヒアドキュメントの中では式展開が有効

[例] ヒアドキュメントの中で式展開を使用する場合
name = 'Alice'
a = <<TEXT
ようこそ、#{name}さん！
以下のメッセージをご覧ください。
TEXT

puts a
#=> ようこそ、Aliceさん！
#=> 以下のメッセージをご覧ください。


->識別子をシングルクオートで囲むと式展開が無効になる、ダブルクオートで囲むと式展開が有効になる

[例1] 識別子をシングルクオートで囲み、式展開を無効にした場合の例
name = 'Alice'
a = <<'TEXT'
ようこそ、#{name}さん！
以下のメッセージをご覧ください。
TEXT

puts a
#=> ようこそ、#{name}さん！
#=> 以下のメッセージをご覧ください。

[例2] 識別子をダブルクオートで囲み、式展開を有効にした場合の例(<<TEXTのように書いた場合と同じ)
name = 'Alice'
a = <<"TEXT"
ようこそ、#{name}さん！
以下のメッセージをご覧ください。
TEXT

puts a
#=> ようこそ、Aliceさん！
#=> 以下のメッセージをご覧ください。


->デフォルトとダブルクオートで識別子を囲んだ場合は \n のようなバックスラッシュ付きの文字が有効だが、シングルクオートで囲むと無効になる
[例1] デフォルトは改行文字が有効
a = <<TEXT
こんにちは\nさようなら
TEXT

puts a
#=> こんにちは
#=>　さようなら


[例2] 識別子をダブルクオートで囲んだ場合も改行文字が有効
a = <<"TEXT"
こんにちは\nさようなら
TEXT

puts a
#=> こんにちは
#=>　さようなら


[例3] 識別子をシングルクオートで囲んだ場合は改行文字が無効
a = <<'TEXT'
こんにちは\nさようなら
TEXT

puts a
#=> こんにちは\nさようなら
