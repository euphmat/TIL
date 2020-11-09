# mdbook

## WebSite

[https://github.com/rust-lang/mdBook](https://github.com/rust-lang/mdBook)

## Install

```shell
$ cargo install mdbook
$ brew install mdbook
```

## Usage

```shell
$ mdbook init  # 新規Bookを作成
$ mdbook build # Bookをビルド
$ mdbook watch # Bookが更新されるたびにビルドを実行
$ mdbook serve # Bookを更新するたびにビルトを実行し、ブラウザを更新する (http://localhost:3000)
```

## Directory

```shell
BookShelf/               # Bookを格納
└┬[Book_Name]/         # Bookを構成するファイルを格納。build init 時に生成される
 ├─book/               # mdbook build 時に生成されるフォルダ
 ├─book.toml           # 設定ファイル
 └─src/
     ├─index.md        # 表紙ページ
     ├─SUMMARY.md      # 目次の設定ファイル
     └─[page_name].md  # ページコンテンツ
```
