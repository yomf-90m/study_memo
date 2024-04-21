### マルチステージビルドとは
→処理ごとにイメージを使い分けることでイメージサイズの圧縮ができる(少量のサイズでイメージが作れる)。

共通処理を環境依存処理を分離し、Dockerfileの管理が楽になる。
  ```
[例]Dockerfileの中身
FROM ubuntu:20.04 AS base　　　　　　　　　　　　　　　※　FROMからCMDまでが共通処理、　base と名前をつけている
RUN apt update　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
CMD ["sh", "-c", "echo My name is $my_name"]

FROM base AS development　　　　　　　　　　　   ※ baseを参照、開発環境のみの処理
ENV my_name=TEST

FROM base AS production
ENV my_name=Bob　　　　　　　　　　　　　　　　　　     　　　  ※ baseを参照、本番環境のみの処理
```

### docker image build --target development .
→ --target で指定、開発環境のイメージを作成する。

### docker image build --target production .
→本番環境のイメージを作成する。
