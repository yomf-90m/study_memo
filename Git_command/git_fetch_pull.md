### git fetch リモート名
→リモートリポジトリから情報を取得する。
```
[例] git fetch origin
```

フェッチはリモートリポジトリの情報をローカルリポジトリに保存させるためワークツリーには保存されない。

ワークツリーに情報を反映させるにはgit merge リモート名/ブランチ名　でワークツリーに統合できる。
```
[例] git merge origin/main
```

### git pull リモート名 ブランチ名
→リモートリポジトリから情報を取得する。
```
[例] git pull origin main
```

### feach と pull の違い

pull はリモートリポジトリから情報を取得するからマージまで一気にしたい時に使う。

git pull は以下のコマンドと同じ挙動になる。

```
git fetch リモート名 → git merge リモート名/ブランチ名
```
