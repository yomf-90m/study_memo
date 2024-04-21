### %記法
→%記法を用いることでシングルクオートやダブルクオートをバックスラッシュでエスケープする必要がなくなる。
```
[例] %記法を使用した場合
# %q! !はシングルクオートで囲んだことと同じ意味になる
puts %q!He said, "Don't speak."! #=> He said, "Don't speak."

# %Q! !はダブルクオートで囲んだことと同じ意味になる(改行文字や式展開が使える)
someting = "Hello."
puts %Q!He said, "#{someting}"! #=> He said, "Hello."

# %! !もダブルクオートで囲んだことと同じ意味になる
someting = "Bey."
puts %!He said, "#{someting}"! #=> He said, "Bey."


[例] %記法を使用しなかった場合
puts 'He said, "Don\'t speak."' #=> He said, "Don't speak."

someting = "Hello."
puts "He said, \"#{someting}\"" #=> He said, "Hello."

someting = "Bey."
puts "He said, \"#{someting}\"" #=> He said, "Bey."
```

→%q! !のように ! を使って区切り文字を使ったが ? や ^ などの任意の記号を区切り文字として使うことができる、(), {}, <>でも使用できる。
```
[例]
# ?を区切り文字として使用
puts %q?He said, "Don't speak."? #=> He said, "Don't speak."

# <>を区切り文字として使用
puts %q<He said, "Don't speak."> #=> He said, "Don't speak."
```
