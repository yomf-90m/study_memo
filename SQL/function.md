## 関数の呼び出し
```
関数の名前(引数･･･)
```

### 関数について定められていること

1. 名前: その関数の名前。
2. 引数: その関数を呼び出す際に引き渡す情報。２つ以上の場合もある。
3. 戻り値: その関数の呼び出し結果として得られる情報。
```
[例] LENGTH関数を使用
SELECT メモ, LENGTH(メモ) AS メモの長さ
FROM 家計簿
```
| メモ | メモの長さ |
| --- | --- |
| コーヒー購入 | 6 |
| ５月の給料 | 6 |
| 書籍を購入 | 5 |
| ５月の電気代 | 6 |

## 文字列にまつわる関数

### LENGTH / LEN

→文字列の長さを表す関数。SQL ServerではLEN関数を利用する。
```
[例] 10文字(10バイト)以下のメモだけを取得する
SELECT メモ, LENGTH(メモ) AS メモの長さ FROM 家計簿
WHERE LENGTH(メモ) <= 10
```

### TRIM(トリム) / LTRIM(エルトリム) / RTRIM(アールトリム)

→TRIM(トリム)・・・文字列の前後の空白を除去する関数。

LTRIM(エルトリム)・・・文字列の前(左側)の空白を除去する関数。

RTRIM(アールトリム)・・・文字列の後ろ(右側)の空白を除去する関数。
```
[例] 空白を除去したメモを取得
SELECT メモ, TRIM(メモ) AS 空白除去したメモ
FROM 家計簿
```

### REPLACE(リプレース)

→文字列の一部を別の文字に置換する関数。

```
REPLACE (置換対象の文字列, 置換前の部分文字列, 置換後の部分文字列)
```
```
[例]　メモの一部を置換する
UPDATE 家計簿
SET メモ = REPLACE(メモ, '購入', '買った')
```

### SUBSTRING(サブストリング) / SUBSTR

→文字列の一部分だけを取り出す関数。

```
SUBSTRING(文字列を表す列, 抽出を開始する位置, 抽出する文字の数)
SUBSTR(文字列を表す列, 抽出を開始する位置, 抽出する文字の数)
```
```
[例] 費目列の1 ~ 3文字目に「費」があるものを抽出
SELECT * FROM 家計簿
WHERE SUBSTRING(費目, 1, 3) LIKE '%費%'
```

### CONCAT

→文字列を連結する関数。
```
CONCAT(文字列, 文字列[, 文字列...])
```
```
[例] 費目とメモを繋げて抽出する
SELECT CONCAT(費目, ':' || メモ)　FROM 家計簿
```
| concat |
| --- |
| 食費:コーヒーを購入 |
| 給料:１月の給料 |
| 交際費:同期会の会費 |


## 数値にまつわる関数

### ROUND

→指定した位置で四捨五入した結果を返す関数。
```
ROUND(数値を表す列, 有効とする桁数)
```
```
[例] 百円単位の出金額を取得する
SELECT 出金額, ROUND(出金額, -2) AS 百円単位の出金額
FROM 家計簿
```
| 出金額 | 百円単位の出金額 |
| --- | --- |
| 380 | 400 |
| 2800 | 2800 |
| 5000 | 5000 |
| 7560 | 7600 |

### TRUNC(トランク)

→指定した位置で切り捨てした結果を返す関数。
```
TRUNC(数値を表す列, 有効とする桁数)
```

### POWER

→値のべき乗を計算する関数。
```
POWER(数値を表す列, 何乗するかを指定する数値)
```

## 日付にまつわる関数

### CURRENT_TIMESTAMP
→現在の日付を得る関数。(年、月、日、時、分、秒)

### CURRENT_DATE
→現在の日時を得る関数。(年、月、日)

### CURRENT_TIME
→現在の時刻を得る関数。(時、分、秒)
```
[例] 現在の日時を取得して登録
INSERT INTO 家計簿
VALUES (CURRENT_DATE, '食費', 'ドーナツを買った', 0, 260)
```

## 変換にまつわる関数
### CAST(キャスト)
→データ型を変更する関数。
```
CAST(変換する値 AS 変換する型)
```
```
[例] 出金額列をVARCHAR型に変換して「円」と連結する
CAST(出金額 AS VARCHAR(20)) + '円'
```

### COALESCE(コアレス)
→複数の引数を受け取り、受け取った引数を左から順番にチェックし、その中から最初に見つかったNULLではない引数で返す。
```
COALESCE(列や式1, 列や式2, 列や式3 ...)
```
```
[例]
SELECT COALESCE('A', 'B', 'C') /* 結果は 'A' */
SELECT COALESCE(NULL, 'B', 'C') /* 結果は 'B' */
SELECT COALESCE(NULL, 'B', NULL) /* 結果は 'B' */
SELECT COALESCE(NULL, NULL, 'C') /* 結果は 'C' */
```
```
[例]　NULLを明示的に表示する
SELECT 日付, 費目,
COALESCE (メモ, '(メモはNULLです)') AS メモ, 入金額, 出金額
FROM 家計簿
```
| 日時 | 費目 | メモ | 入金額 | 出金額 |
| --- | --- | --- | --- | --- |
| 2022-02-03 | 食費 | 自分へのご褒美 | 0 | 380 |
| 2022-02-11 | 教養娯楽費 | (メモはNULLです) | 0 | 2800 |
| 2022-02-14 | 交際費 | (メモはNULLです) | 0 | 5000 |
