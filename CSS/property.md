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
p {
  background: pink;
  margin: 0 0 0 auto;
  width: 160px;
  height: 160px;
  border: 8px solid blue;
  padding: 16px;
}
```

### margin: 0 0 0 auto と margin-left: auto の違い
→margin: 0 0 0 auto; ではすべての margin を指定するため、margin-left 以外の既に設定されている margin の値（margin-top margin-bottom margin-right）が 0 で上書きされる。

margin-left: auto; と書いた場合は margin-left の値のみを変更するため，他の値はそのままになる

```
[例] 左右両方に指定すると余白を均等に左右に割り当てるので、要素が中央に寄る
p {
  background: pink;
  margin: 0 auto;
  width: 160px;
  height: 160px;
  border: 8px solid blue;
  padding: 16px;
}
```

### marginの相殺
→上下方向に隣接した marginでは、長さが同じなら片方が、長さが異なるなら短いほうが打ち消されるといった仕様になっている。
```
[例] p要素同士の間が32pxではなく16pxになる
p {
  background: pink;
  
  /* 上下に16pxを指定 */
  margin: 16px 0;
}
```

### box-sizing
→値に border-box とすることで、 width や height が border box のサイズを指し示すようになる。
```
[例1] border: 8px solid blue; padding: 8px;とした場合、その分だけ大きくなってしまう
p {
  background: pink;
  margin: 16px 0 0;
  width: 400px;
  height: 80px;
  border: 8px solid blue;
  padding: 8px;
}
```
```
[例2] box-sizingを使用
p {
  background: pink;
  margin: 16px 0 0;
  width: 400px;
  height: 80px;
  border: 8px solid blue;
  padding: 8px;
  box-sizing: border-box;
}
```

### overflow
→コンテンツが領域からあふれたときに使用する。
```
[例1] 「こんにちは。」が領域から溢れる
p {
  background: pink;
  margin: 0;
  width: 160px;
  height: 80px;
}
```
```
[例2] 領域から溢れた分を隠す
p {
  background: pink;
  margin: 0;
  width: 160px;
  height: 80px;
  overflow: hidden;
}
```
```
[例3] 領域内でスクロールして溢れた分を見る
p {
  background: pink;
  margin: 0;
  width: 160px;
  height: 80px;
  overflow: scroll;
}
```

### box-shadow
→領域に影をつけるプロパティ。
```
box-shadow: 左右にずらす値を指定 上下にずらす値を指定 ぼかす範囲を指定 影の広がり 色 内側指定(insertなど);
```
```
・最初の値はプラスの値だと右方向、マイナスの値だと左方向へのずらしになる。
・2 番目の値はプラスの値だと下方向、マイナスの値だと上方向へのずらしになる。
・3 番目は長さをもとに複雑な計算をして、この数値が大きいほどぼかしを大きくするという値になる。
```
```
[例1] 右下に影をつける
p {
  background: pink;
  margin: 16px;
  width: 160px;
  height: 160px;
  box-shadow: 8px 8px gray;
}
```
```
[例2] 右下の影をぼかす
p {
  background: pink;
  margin: 16px;
  width: 160px;
  height: 160px;
  box-shadow: 8px 8px 8px gray;
}
```
```
[例3] 全方向にうっすらぼけた影をつける
p {
  background: pink;
  margin: 16px;
  width: 160px;
  height: 160px;
  box-shadow: 0 0 8px gray;
}
```
```
[例4] 左上に影をつける
p {
  background: pink;
  margin: 16px;
  width: 160px;
  height: 160px;
  box-shadow: -8px -8px gray;
}
```

## テキストのスタイリング

### font-size
→フォントのサイズを調整する、大抵のブラウザは16pxになっている。

### font-weight
→フォントの太さを調整する。

normal・・・太字を解除する。

bold・・・太字にする。

### text-align

→テキストを領域内で指定した場所に揃える。

center・・・領域内の中央にテキストを配置。

right・・・領域内の右側にテキストを寄せる。

left・・・領域内の左側にテキストを寄せる。

```
[例]
h1 {
  margin: 0;
  background: skyblue;
  font-size: 16px;
  font-weight: normal;
  text-align: center;
}

p {
  margin: 0;
  background: pink;
  font-weight: bold;
  text-align: right;
}
```

### line-height

→行間(行ボックス)の高さを制御するプロパティ。

content box 内にさらに行ボックスが存在しており、

行ボックスはfont-size部分と half leading 部分に分かれる。

line-height は単位なしで指定しておくと、変更に強いコードになる。

```
[例] p要素の行間がゆったりする
h1 {
  margin: 0;
  background: skyblue;
}

p {
  margin: 0;
  background: pink;
  line-height: 2.0;
}
```

## 要素の配置

### ブロックボックス / インラインボックス

→ブロックボックスとはデフォルトでは横幅いっぱいに広がって、次の要素が下に配置されていくようなボックスのことを指す。

```
[例]  h1、 p 、section、 header 、 footer 、 div など
```

→インラインボックスとは文中に配置されるボックスで横は幅いっぱいではなくて、コンテンツの幅で、次の要素は下ではなくて右に配置されていくボックスを指す。

```
[例] a、 img 、 code 、 time 、 spanなど
```

**注意点**

- インラインボックスではwidth と heightは指定できない
