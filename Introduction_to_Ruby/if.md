### if文
→else節がなく、尚且つどの条件にも合致しなかった場合は nil が返る(falseではない)。
```
[例]
country = 'italy'

greeting =
  if country == 'japan'
    'こんにちは'
  elsif country == 'us'
    'Hello'
  end

greeting #=> nil
```

### if文でのthenについて
→ifとelsifの後にthenを入れると条件式とのその条件が真だった場合の処理を１行で押し込めることができるが使用頻度はあまり高くない。
```
[例]
country = 'italy'
if country == 'japan' then 'こんにちは'
elsif country == 'us' then 'Hello'
elsif country == 'italy' then 'Ciao'
else '???'
end  #=> 'Ciao'
```

### 後置if
```
[例]
point = 7
day = 1
point *= 5 if day == 1
point #=> 35
```
