### 別名の定義
**AS**・・・任意のキーワードをつけることで別名を定義できる。

### ASのメリット
1. 結果表における列のタイトルを状況に応じて任意の内容で表示できる。
2. 英語名などのわかりにくい列名や長い列名でもわかるやすく短い別名をつけてSQL文の中で利用できる。
```
[例]
SELECT 費目 AS ITEM, 入金額 AS RECEIVE, 出金額 AS PAY
  FROM 家計簿 AS MONEYBOOK
 WHERE 費目 = '給料'
