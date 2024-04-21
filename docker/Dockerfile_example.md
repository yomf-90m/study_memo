## copyについて
### COPY コピー元 コピー先
```
[例]　COPY /app .
```

### COPY --from=0 コピー元 コピー先
→　--from=0 は０番目のFROM(１番上)からコピーをする。

マルチステージビルドで使用する。

コピーしたいFROMに名前をつけて --from=名前 で指定することも可能 。
```
[例] FROM gcc:12.2.0 AS compiler
　　    COPY --from=conpiler コピー元 コピー先
```


## WORKDIR(ワークディル/ワーキングディレクトリ)　について
### WORKDIR ディレクトリパス
```
[例] RUN touch 1.txt    　※ / (ルート)ディレクトリに空の1.txtファイルが作成される
     WORKDIR /app/my_dir  ※ /app/my_dirディレクトリを指定
     RUN touch 2.txt　　　 ※ /app/my_dirディレクトリに空の2.txtファイルが作成される
     WORKDIR ..　　　　　 　※ /app/my_dirディレクトリの1つ上の階層の/appディレクトリを指定
     RUN touch 3.txt      ※/appディレクトリに空の3.txtファイルが作成される
```
→Dockerfileに記載する。

RUNやCMDなどの作業ディレクトリを指定する。

未指定時は /(ルート) が作業ディレクトリになっている。



## ARG(アーギュメント：引数) について
### ARG キー1(変数名)=デフォルト値(初期値)
```
[例] ARG message
      RUN echo $message > message.txt
コンテナを実行してもmessageの値がないので何も表示されない。
```
```
[例] docker container run -it --build-arg message=値 .
--build-arg 変数名=値 とするとDockerfileに記述していなくても。
コンテナ実行時に表示されるようになる。
```

→Dockerfileに記載する。

イメージ作成時のみに利用する一時的な変数を渡す。

Dockerfileの中で使える変数を渡すことができる。

bashに入って echo $変数名 で確認しても中身は何もない。


## ENV(エンブ)について
### ENV キー１(環境変数名)=値１(環境変数の値) キー2(環境変数名)=値2(環境変数の値)
```
[例]　ENV hello="Hello World"
    ENV hoge=HOGEHOGE
     ※””をつけるのはスペースがある値で、どこまでが文字列か判断するため
　　　　     スペースがないなら””はつけなくていい
```
→Dockerfileに記載する。

環境変数の設定をするための記述。

イメージ作成時とコンテナ実行時の両方で有効な変数。

１度に複数個の環境変数を設定することができる。

bashに入ったら echo $キー1（環境変数名） で環境変数の値を呼び出すことができる。



## CMD(コマンド)について
### CMD ["実行ファイル", "パラメーター１", "ぱらめーたー２"]
```
[例] CMD ["ls", "-a"]
```
→Dockerfileに記載する。

コンテナ実行時のデフォルトコマンドを設定する。

Dockerfileで１度しか使えない。

複数のCMDがあれば最後のCMDのみが有効。
