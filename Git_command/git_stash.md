### git stash
→作業を一時避難するコマンド

**stash**は隠すをいう意味

**使用用途**

変更した箇所をstashに一時避難する → ワークツリーとステージの変更を無かったことにできる → 別のブランチを切って作業できる

### git stash list
→避難した作業を確認するコマンド

### git stash apply
→避難した最新の作業を復元するが、ステージの作業は復元されない

**Apply**は適用するという意味

### git stash apply --index
→ステージの状況も復元するコマンド

### git stash apply スタッシュ名
→特定の作業を復元するコマンド
```
[例]　git stash apply stash@{0}
```

### git stash drop
→避難した最新の作業を削除するコマンド

### git stash drop スタッシュ名
→避難した特定の作業を削除するコマンド
```
[例] git stash drop stash@{1}
```

### git stash clear
→全作業を削除するコマンド
