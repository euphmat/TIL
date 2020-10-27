# セットアップ

## インストール 

```shell
$ scoop install rust # Windows
$ brew install rust  # MacOS
$ curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh # Linux
```

## アンインストール 

```shell
$ scoop uninstall rust  # Windows
$ brew uninstall rust   # MacOS
$ rustup self uninstall # Linux
```

## `rustc`のインストールが成功したかどうかを確認 

```shell
$ rustc --version
```

> **実行結果**
> ```shell
> rustc 1.46.0 (04488afe3 2020-08-24)
> ```

## Cargo

## `Cargo`のインストールが成功したかどうかを確認

```shell
$ cargo --version
```

> **実行結果**
> ```shell
> $ cargo 1.46.0 (149022b1d 2020-07-17)
> ```

## ビルド

```shell
$ cargo build           # ビルド
$ cargo run             # 実行
$ cargo check           # コンパイルが通るか確認
$ cargo build --releace # リリース用実行ファイルの作成
```
