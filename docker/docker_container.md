### docker container run イメージ名
→イメージからコンテナを作成、起動するコマンド。


### docker container run -i イメージ名
→ -i オプションをつけることで標準入力がターミナルに対してオープンになる。


### docker container run -t イメージ名
→色などで出力される結果が綺麗になる。


### docker container run -it イメージ名
→ -i と -tオプションを組み合わせている。


### docker container run イメージ名 実行したいコマンド名 
→イメージからコンテナを新規作成し、起動して任意のコマンドを実行させるコマンド。
```
[例]
docker container run -it イメージ名 pwd
docker container run -it イメージ名 ls
```

### docker container run --rm イメージ名 実行したいコマンド
→コマンドを実行し終わったら直ちにコンテナを削除するコマンド。


### docker container run -it -d イメージ名 実行したいコマンド
### docker container run -itd イメージ名 実行したいコマンド
→ -d オプションをつけるとコンテナがデタッチドモードで起動する。

何もつけないとフォアグラウンドモードでコンテナを起動する。


### デタッチドモードとは
→コンテナがバックグランドで実行すること。

使用用途はバックグランドでコンテナを実行するのでbashに入ることができない。

つまりターミナルでbashコマンドが打てずターミナルを占領してしまうもので使用する。
```
[例]
nginxはbashに入れず、ログを表示するのでデタッチドモードを使う
```

### docker container run -v ボリューム名:コンテナ内絶対パス イメージ
### docker container run --mount type=volume, src=ボリューム名, dst=コンテナ内絶対パス イメージ
→ボリュームに接続しながらコンテナを起動する。

絶対パスなので . からはじまる階層は選べない、 / からはじます階層のみ。

-v と--mount の違いは書き方のみで挙動を同じ。
```
[例]
docker container run -it -v my-volume:/app1 イメージ名
```



### docker container run -v ホスト絶対パス:コンテナ内絶対パス イメージ
### docker container run --mount type=bind, src=ホスト絶対パス,dst=コンテナ内絶対パス イメージ
→バインドマウントしながらコンテナを起動する。

bashでファイルを修正するとホストOSで同じファイルを開くとホストでも修正された内容になる。

-v と--mount の違いは書き方のみで挙動を同じ。

```
[例]
docker container run -it -v /Users/maruyamamao/docker_tutorial/docker/my-dir:/app ubuntu:20.04
docker container run -it -v $(pwd)/my-dir:/app ubuntu:20.04　でも同じ挙動
```



### docker conteiner run -p ホスト側のポート:コンテナ側のポート イメージ名
→ -p によって、ホストマシンのポートをコンテナのポートに紐づける。


### docker container ls
→ローカルマシンに存在するコンテナ一覧を表示するコマンド。


### docker container ls -a
→ -a オプションをつけることで、起動していないコンテナの表示される。


### docker contaner stop コンテナ名(NAMES)
### docker contaner stop コンテナID
→起動中のコンテナを停止するコマンド。


### docker container restart コンテナ名
### docker container restart コンテナID
→コンテナを再起動(UP)にするコマンド。


### docker container rm コンテナ名
### docker container rm コンテナID
→コンテナを破棄するコマンド。

statusがup以外のコンテナのみ破棄できるコマンド。


### docker container rm -f コンテナ名
→ -f オプションをつけることで強制的に削除できるのでup状態のコンテナも削除できる。


### docker contaner exec コンテナ名 実行したいコマンド
→up状態(既存する)のコンテナに任意のコマンドを実行させるコマンド。


### docker container exec -d コンテナ名 実行したいコマンド
→ -d オプションをつけるとコンテナがデタッチドモードで起動する。

何もつけないとフォアグラウンドモードでコンテナを起動す。


### docker container prune(プルーン)
→pruneオプションをつけることで、up以外のコンテナを一括で削除できる。


### docker container attach コンテナ名
→デタッチドモードになっているコンテナに接続するコマンド。
