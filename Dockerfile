FROM: hoge

FROM ubuntu:24.04

# 必要なパッケージのインストール
RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# ポート80を開ける
EXPOSE 80

# デフォルトでnginxをフォアグラウンドで起動
CMD ["nginx", "-g", "daemon off;"]