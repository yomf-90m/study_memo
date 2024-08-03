### width
→幅を設定するためのプロパティ。
```
[例] p要素の幅をブラウザの幅の50%にする
　　 ブラウザの幅を変えても比率が保持される
p {
  background: pink;
  margin: 0;
  width: 50%;
}
```

### max / min width
→幅の最大値、最小値を指定できる。
```
[例] 最大値 基本的に50%の幅にしたいが、400px以上には広がってほしくないという場合
p {
  background: pink;
  margin: 0;
  max-width: 400px;
  width: 50%;
}
```
```
[例] 最小値 基本的に50%の幅にしたいけれども、 400pxより縮んで欲しくない場合
p {
  background: pink;
  margin: 0;
  min-width: 400px;
  width: 50%;
}
```

### border(境界線)
→要素の領域の外側に境界線をつける。
デフォルトのボックスモデルでは、 width や height に border は含まれないので、境界線が要素の領域の外側について、境界線分大きくなる。
border のあとに top 、 right 、 bottom 、 left といったキーワードを使えば、方向を決めて指定することもできる。

```
[例] 上は破線、下は二重線の境界線
p {
  background-color: pink;
  margin: 0;
  width: 160px;
  height: 160px;
  border-top: 8px dashed blue;
  border-bottom: 8px double blue;
}
```

### padding
→要素の枠線の内側に余白をつける。
上下左右が全て同じ値なら一括指定プロパティを使用する。
```
   top: ↑
bottom: ↓
  left: ←
 right: → の意味
```
```
[例]  上下左右が全て同じ値の場合(一括指定プロパティ)
 padding: 16px;
          ↑↓←→

[例] 上下が同じ値、左右が同じ値の場合
 padding: 16px 8px;
           ↑↓   ←→

[例] 上下が別の値、左右が同じ値の場合
padding: 16px 8px 4px;
          ↑    ←→   ↓

[例] 上下左右が全て別の値の場合、時計回り
padding: 16px 8px 4px 2px;
          ↑    →   ↓   ← 
```

### margin
→境界線の外側に余白をつける。
```
[例] 左側にmarginを指定
p {
  background: pink;
  margin: 0 0 0 16px;
  width: 160px;
  height: 160px;
  border: 8px solid blue;
  padding: 16px;
}
```
→autoキーワードを使用すると水平方向の余白を割り振るために使用される。

**注意点**

1. 左右方向の margin にのみ使える。
2. 下方向の margin だったり、 padding で使うことはできない。
```
[例] 左側の margin に auto キーワードを指定余白が左側に割り振られて、要素が右に寄る
```
