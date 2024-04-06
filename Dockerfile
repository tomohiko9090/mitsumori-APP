# Rubyのバージョンを指定
FROM ruby:3.2.2

# 必要なパッケージのインストール
RUN apt-get update -qq && apt-get install -y nodejs default-mysql-client

# Bundlerのバージョンを更新
RUN gem install bundler:2.3.19

# 作業ディレクトリを設定
WORKDIR /app

# GemfileとGemfile.lockをコピー
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

# Bundlerを使ってGemをインストール
RUN bundle install

# プロジェクトのファイルをコピー
COPY . /app

# ポート3000を開放
EXPOSE 3000

# コンテナ起動時に実行するコマンド
CMD ["rails", "server", "-b", "0.0.0.0"]
