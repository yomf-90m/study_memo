### Popper
→ポップアップ用のライブラリ。
Bootstrapのドロップダウンなどに、使用されている
```
<!doctype html>
<html lang="ja">
<head>
  <!-- 必要なmetaタグ -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet">

  <title>Hello, world!</title>
</head>
<body>
  <h1>Hello, world!</h1>
  <!-- オプション: Popperを含んだBootstrapバンドル版 -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
```

### h1～6
→見出し（Heading）クラスで、CSSで「font-size（文字の大きさ）、font-weight（太さ）、line-height（行間）」定義されている。

h1が1番大きい。
```
<h1>Heading 1</h1>
  <h6>Heading 6</h6>
  <p class="h1">Heading 1</p>
  <p class="h6">Heading 6</p>
```


### display-1～6
→Display headingクラスで、目立つように、.h1～6より大きな文字が定義されている。

desplay-1が1番大きい。
```
<p class="display-1">Display 1</p>
<p class="display-6">Display 6</p>
```

### fs-1～6
→Font sizeのクラスで、CSSで「font-size」が定義されている。

fs-1が1番大きい。
```
<p class="fs-1">Font size 1</p>
<p class="fs-6">Font size 6</p> 
```

### Colors (カラー) の変更方法
→text-テーマカラー、.bg-テーマカラー。
```
「テキスト」や「背景」に色を付けたい場合
<p class="text-primary">text-primary</p>
```

### text-*
→テキストに色を付ける。
例えば「.text-primary」を使うと、青になる。
```
<p class="bg-danger text-white">bg-danger</p>
```

### bg-*
→背景に色を付ける。
例えば「.bg-danger」を使うと、赤になる。

### Buttons (ボタン) の表示方法
→btn、btn-テーマカラー。
```
<button type="button" class="btn btn-primary">Primary</button>
```
### btn btn-*
→ボタンクラスで、例えば「.btn .btn-primary」を使うと、青のボタンになる。

→ <a>タグや、<input>タグでも、ボタンクラスを使うことができる。
```
<a class="btn btn-secondary" href="#" role="button">Link</a>
<input class="btn btn-success" type="button" value="Input">
```


→枠だけのボタンを作りたい場合は、アウトラインボタンを使う。
```
<button type="button" class="btn btn-outline-danger">Danger</button>
```

## Spacing (スペーシング) の指定方法
### m、p
```
<div class="m-3 p-3">
  text
</div>
```
### m-*
→マージン（外側の余白）を、0～5で指定できる。

### p-*
→パディング（内側の余白）を、0～5で指定できる。

### t
→上（top）に余白を付ける。

### b
→下（bottom）に余白を付ける。
```
<div class="mt-3 pb-3">
  text
</div>
```


### s
→左（start）に余白を付ける(RTLの場合、右です)。

### e
→右（end）に余白を付ける(RTLの場合、左です)。
```
<div class="ms-3 pe-3">
  text
</div>
```

### x
→左右に余白を付ける。

### y
→上下に余白を付ける。
```
<div class="mx-3 py-3 bg-info">
  text
</div>
```

### グリッドシステム
→画面を12分割にして表示するシステム。

グリッドシステムを使う場合は最初にコンテナが必要になる。

### コンテナ
→画面サイズに応じて最大幅を調整してくれる。

### container
→画面サイズで幅を調整する、基本的なレイアウト要素。

### container-fluid
→常に100%になる。

ブレークポイント
→画面サイズが切り替わるポイントのこと
「container-ブレークポイント」でサイズを切り替えられる

**ブレークポイント**     **幅**
```
sm              576px以上
md              768px以上
lg              992px以上
xl              1200px以上
xxl             1400px以上
```

### row
→行を指定。

### col
→列を指定。
```
<div class="row">
  <div class="col-3">col-3</div>
  <div class="col-6 bg-info">col-6</div>
  <div class="col">col</div>
</div>
```

### col-*
→列は、1～12の値を指定できる。

例えば、上記のように記述すると、「3：6：3」の比率で表示される。

ブレークポイントを設定すると、768px以上は「4：4：4」、それ以外は「6：6」にできる。
```
<div class="row">
  <div class="col-6 col-md-4">1 of 3</div>
  <div class="col-6 col-md-4">2 of 3</div>
  <div class="col-6 col-md-4">3 of 3</div>
</div>
```

### text-start
→テキストを、左に配置（RTL=右書きの場合、右）。

### text-center
→テキストを、中央に配置。

### text-end
→テキストを、右に配置（RTL=右書きの場合、左）。
```
<div class="row">
  <div class="col text-start">text-start</div>
  <div class="col text-center">text-center</div>
  <div class="col text-end">text-end</div>
</div>
```

### justify-content-center
→アイテムを、左右中央に配置。

左に配置する場合は、.justify-content-start。

右に配置する場合は、.justify-content-endを使用。
```
<div class="row justify-content-center">
  <div class="col-6">justify-content-center</div>
</div>
```

### align-items-center
→アイテムを、上下中央に配置。

上に配置する場合は、align-items-start。

下に配置する場合は、align-items-endを使用。
```
<div class="row align-items-center">
  <div class="col-4">align-items-center</div>
</div>
```

### align-self-start
→（自身を）上に配置。

### align-self-center
→（自身を）上下中央に配置。

### align-self-end
→（自身を）下に配置。
```
<div class="row">
  <div class="col align-self-start">align-self-start</div>
  <div class="col align-self-center">align-self-center</div>
  <div class="col align-self-end">align-self-end</div>
</div>
```

### Bootstrap Icons
→公式のアイコンライブラリで、bootstrap-icons.cssを、CDN（jsDeliver）で読み込むと、簡単に使える。
```
 <!-- Bootstrap Icons CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet">
```

### bi .bi-pencil
→Pencilアイコンを使用。

### bi .bi-link
→Linkアイコンを使用。

### text-decoration-none
→（リンクの）下線を削除。
```
<p class="fs-2">
  <i class="bi bi-pencil"></i>
  Font size 2
</p>
<a href="#" class="text-decoration-none">
  <i class="bi bi-link"></i>
  Link text
</a>
```

### h-100
→高さを100％にする。

### vstack
→対象を垂直レイアウト(縦方向)にする。

### hstack
→対象を水平レイアウト(横方向)にする。
```
<html lang="ja" class="h-100">
<!-- 省略 -->
<body class="h-100 vstack">
```

### mt-auto
→上に余白(マージン)を自動でつける。
```
<footer class="mt-auto py-2 bg-danger text-white">
  <div class="container text-center">
    @2021 ITスクール(仮)
  </div>
</footer>
```

## navタグにて
### nav
→ナビゲーションバーのクラス。

### navbar-expand-lg
→折りたたみの展開に必要なクラス、末尾にブレークポイントを指定できる。

### navbar-dark
→暗い背景の場合に使用（テキストが白くなる）。

明るい背景の場合は.navbar-ligthを使用（テキストが黒になる）。

### fixed-top
→要素の位置（ポジション）を上部にする。

## <a>にて
### navbar-brand
→名前（会社、製品、プロジェクト名など）用のクラス。
```
<!-- ナビゲーションバー -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-danger fixed-top" id="navbar">
    <div class="container">
      <a href="#" class="navbar-brand">
        <i class="bi bi-app-indicator"></i>
        ITスクール(仮)
      </a>
      <!-- トグルボタン -->
      <!-- リンク一覧 -->
    </div>
  </nav>
```

トグルとは
→同じ操作を繰り返すことで機能や状態のON/OFFを切り替える仕組み

## buttonタグにて
### navbar-toggler
→折りたたみや、ナビゲーションのトグル動作に必要。

### data-bs-toggle="collapse"とdata-bs-target
→折りたたみの制御を自動的に割り当てる。

data-bs-targetには折りたたみ対象の名前(CSSセレクタ)を指定する　。

### area-controls
→スクリーンリーダー(読み上げブラウザ)に、コントロールする用を(関連づけ)を伝える。

### aria-expanded
→スクリーンリーダーに開閉状態を伝える。

### aria-label
→スクリーンリーダーにラベル(文字列)を伝える。

aria-*属性はハンディキャップを持つ人に、利用情報を伝えるための属性。

## spanタグにて
### navbar-toggler-icon
→折りたたみのアイコン。
```
<!-- トグルボタン -->
<button class="navbar-toggler"
        type="button"
        data-bs-toggle="collapse"
        data-bs-target="#navbarNav"
        aria-controls="navbarNav"
        aria-expanded="false"
        aria-label="Toggle navigation">
　　<span class="navbar-toggler-icon"></span>
</button>
```

## divタグにて

### collapse .navbar-collapse
→折りたたみ(collapse)できるようになる。

## ulタグ にて

### navbar-nav
→ナビゲーションバーのクラス(ドロップダウンのサポートを含める)。

### ms-auto
→左に余白(マージン)を自動でつける。

## liタグ, aタグにて

### nav-item nav-link
→ナビゲーションバーのアイテムと、リンクを定義。

### active
→アクティブな状態を示す(対象のテキストが強調される)。

### aria-current
→スクリーンリーダーに、カレント(現在位置)を伝える。
```
<!-- リンク一覧 -->
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item">
            <a href="#home" class="nav-link active" aria-current="page">
              ホーム
            </a>
          </li>
          <li class="nav-item">
            <a href="#course" class="nav-link">コース</a>
          </li>
          <li class="nav-item">
            <a href="#reputation" class="nav-link">評判</a>
          </li>
          <li class="nav-item">
            <a href="#content" class="nav-link">講座内容</a>
          </li>
          <li class="nav-item">
            <a href="#pricing" class="nav-link">価格</a>
          </li>
          <li class="nav-item">
            <a href="#contactUs" class="nav-link">お問い合わせ</a>
          </li>
        </ul>
      </div>
```

### padding
→３つ指定した場合は「上、左右、下」の余白を指定
```
<section 省略　style="padding: 80px 0 50px">
```

### g-*
→ガターをつける。

### ガター
→カラムの余白のこと、ガターがないと小さい画面の時などにカラムが詰まって表示される。

ガターは上下(gy-*)左右(gx-*)の指定できる。
```
<div class="row align-itams-center g-4">
```

### shadow
→対象に影をつける。

影を小さくしたい場合は .shadow-sm を使う。

影を大きくしたい場合は .shadow-lg を使う。
```
<a href="#contactUs" class="btn btn-dark px-5 shadow">
```

### img-fluid
→画面をレスポンシブデザインにする。
```
<img src="#" class="img-fluid" alt="#">
```

### text-muted
→テキストをグレー(落ち着いた色)にする。

### roumded-pill
→角を丸める。
```
<!-- カード風 -->
<div class="border p-3 shadow">
  <i class="bi bi-laptop text-danger fs-1"></i>
  <h5>プログラミング</h5>
  <p class="text-muted">
    アプリを作成したい人に最適です。
  </p>
  <a href="#content" class="btn btn-danger rounded-pill">
    詳細はこちら
  </a>
 </div>
</div>
```

### row-cols-*
→行ごとに表示する列の数を設定。

### row-cols-md-4
→md(768px以上)の場合は４列でそれ以外は１列にする。
```
<!-- 行の設定 -->
<div class="row row-cols-l row-cols-md-4">
```

### card
→カードを表示する。

### card-body
→カードの本体(中身)を定義する。

### card-title
→カードのタイトル。

### card-text
→カードのテキスト。
```
<!-- カード -->
<div class="card text-white bg-primary mb-3 shadow">
  <div class="card-body">
    <h1 class="card-title">600人</h1>
    <p class="card-text">年間受講者</p>
  </div>
</div>
```

### カードの高さを揃えたい時は .h-100 を使う
```
<!-- カード -->
<div class="card shadow h-100">
  <img src="https://source.unsplash.com/640x426/daily?computer" alt="Computer">
  <div class="card-body">
    <h5>プログラミング基礎</h5>
    <p class="card-text">プログラミングの基礎を、ゼロから学びます。</p>
  </div>
</div>
```


### card-header
→カードのヘッダーを表示。

### fw-normal
→フォントの大きさを標準の大きさにする。

cssの「font-weight: 400」と同じ効果。
```
<div class="card shadow-sm h-100">
  <div class="card-header">
    <h4 class="fw-nomal">無料</h4>
  </div>
</div>
```

### list-group
→リストグループを表示する。

各アイテムには.list-group-itemを使用する。

### list-group-flush
→枠線を除外する。
```
<div class="card-body">
  <h1 class="card-title text-danger">0円</h1>
  <ul class="list-group list-group-flush">
    <li class="list-group">カウンセリング</li>
    <li class="list-group">チャットサポート</li>
  </ul>
</div>
```

### card-footer
→カードのフッターを表示する。

### w-100
→幅を100％にする。
```
<div class="card-footer">
  <a href="#" class="w-100 btn btn-outline-danger">
    無料登録
  </a>
</div>
```

### hstack
→水平レイアウト(横方向)にする。

孫要素は、hstackの影響を受けない。
```
<!-- 横方向で配置 -->
<div class="hstack mb-3">
  <i class="bi bi-envelope-fill text-danger fs-3"></i>
  <div class="ms-3">
    <!-- 孫要素は、.hstackの影響を受けない（横に並ばない） -->
    <h5 class="mb-1">Eメール</h5>
    <span class="text-muted">info@example.com</span>
  </div>
</div>
```

### form-control
→スタイルやサイズを(Bootstrap用に)調整する。

inputタグやtextareaタグなどの入力項目に設定する。

```
<!-- フォーム -->
<form action="#" method="post">
  <div class="mb-3">
    <input type="text" class="form-control shadow-sm" placeholder="氏名">
  </div>
```

### スクロールスパイ
→ページをスクロールした時にナビゲーションバーが一緒に切り替わる機能。
```
<body class="h-100 vstack"
  data-bs-spy="scroll" data-bs-target="#navbar">
```

### スパイしたい要素をIDまたはクラス指定で対象を指定する。
```
data-bs-target="#navbear" (IDで指定)
data-bs-target=".navbear" (クラスで指定)
```
