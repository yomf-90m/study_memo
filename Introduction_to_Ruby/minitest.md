### Minitestについて
→Minitestはtest_始まるメソッドを探してすべて実行する。

検証メソッドがたくさんある。
```
require 'minitest/autorun'

class SampleTest < Minitest::Test
  def test_sample
    assert_equal 'RUBY', 'ruby'.upcase
  end
end
```
```
[例] assert_equalメソッド
assert_equal 期待する結果, テスト対象となる値や式

[例] aとbが等しけれはパスする
assert_equal b, a

[例] aが真であれはパスする
assert a 

[例] aが偽であればパスする
refute a

[例] その他の検証メソッド
assert_output :標準出力への出力内容を検証するメソッド
assert_raises :指定したエラー(例外)が発生した時にテストをパスさせる
```
