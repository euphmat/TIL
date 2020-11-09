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

```
$ scoop install Git
```

## Extras Bucketの追加

```
$ scoop bucket add extras
```
