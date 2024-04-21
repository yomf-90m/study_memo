### docker network ls
→ネットワーク一覧を表示する。


### docker network inspect ネットワーク名
→ネットワークの詳細情報を表示する。
どのコンテナがどのネットワークに繋がっているか確認することができる。


### docker network create ネットワーク名
→新しいネットワークを作成する。
```
[例] docker network create my-net
ドライバがブリッジのネットワークを作成する。
```

### docker network run --network ネットワーク名　イメージ名
→指定したネットワークに接続したコンテナを起動する。
```
[例]docker container run --network my-net nginx
```

### docker network rm ネットワーク名
→指定したネットワークを削除する。
