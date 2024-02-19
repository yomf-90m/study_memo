数値クラス
→数値には幾多かのクラスがあり、整数は Intege クラス、小数は Float クラス、有理数は Rational クラス、複素数は Complex クラスなどがある
　　数値クラスは全て Numeric クラスを継承しているサブクラスである
[例] 有理数リテラルを使う(3rが有理数リテラル)
r = 2 / 3r
r       #=> (2/3)
r.class #=> Rational

[例] 文字列から有理数に変換する
r = '2/3'.to_r
r       #=> (2/3)
r.class #=> Rational

[例] 複素数リテラルを使う(0.5iが複素数リテラル)
c = 0.3 - 0.5i
c       #=> (0.3-0.5i)
c.class #=> Complex

[例] 文字列から複素数リテラルに変換する
c = '0.3 - 0.5i'.to_c
c       #=> (0.3-0.5i)
c.class #=> Complex


数値について
→数値にアンダースコアを含めることができる _  は無視される
[例] 1_000_000 #=> 1000000

変数の手前に - をつけると数値の正と負を反転できる
[例] n = 1 #=> 1
　　　　　　　　　-n    #=> -1
