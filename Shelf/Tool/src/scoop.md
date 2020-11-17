# Scoop

## 公式サイト

+ [scoop](https://scoop.sh/)  
+ [scoop - Github](https://github.com/lukesampson/scoop)

## インストール

```shell
> Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
> [environment]::setEnvironmentVariable('SCOOP','D:\Scoop','User')
> $env:SCOOP='D:\Scoop'
> iex (new-object net.webclient).downloadstring('https://get.scoop.sh')
```

## Gitのインストール

```shell
$ scoop install Git # Dependence 7zip
```

## Extras Bucketの追加

```shell
$ scoop bucket add extras
```

## 必要なソフトをインストール

```shell
$ scoop install bat
$ scoop install cmder-full
$ scoop install rust
$ scoop install googlechrome
$ scoop install mdbook
```

