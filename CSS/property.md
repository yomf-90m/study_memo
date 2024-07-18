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
