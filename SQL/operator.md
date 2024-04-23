### IS NULL / IS NOT NULL 演算子

→NULLがどうかを判定する目的で使用。
```
NULLであることを判定
式 IS NULL

NULLでないことを判定
式 IS NOT NULL

[例] =, <> 演算子は使用できない
SELECT * FROM 家計簿 WHERE 出金額 = NULL

[例] 出金額がNULLの行を抽出
SELECT * FROM 家計簿 WHERE 出金額 IS NULL

[例] 出金額がNULLではない(値が入っている)行を抽出
SELECT * FROM 家計簿 WHERE 出金額 IS NOT NULL
```
