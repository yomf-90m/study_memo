### docker image pull コマンド名
→イメージをダウンロードするコマンド。

### docker image ls
→ローカルマシンに存在するイメージ一覧を表示するコマンド。

### docker image rm イメージ名
### docker image rm イメージID
→ローカルマシンに存在するイメージを削除するコマンド。

### docker image inspect イメージ名
→イメージの詳細を表示するコマンド。

### docker image build ディレクトリパス(ビルドコンテキストパス)
→Dockerfileとビルドコンテキストからイメージを作成するコマンド。
```
[例] docker image build .
. はカレントディレクトリを表す。
```

### docker image build -t 名前:タグ名 ディレクトリパス
→ -t オプションをつけると作成したイメージに名前を登録できる。

:の後にタグ名を登録できる。
