# 環境構築手順

## 1. ツールのインストール

```
fvm use 3.24.3
fvm global 3.24.3
```

> [!NOTE]
> fvm自体のインストールはこちら[参考](https://zenn.dev/altiveinc/articles/flutter-version-management-3#fvm-3-%E3%81%AE%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB)

## 2. 環境変数の配置
以下のzipファイルをプロジェクトのルートディレクトリで解凍

[dart_defines.zip](https://github.com/user-attachments/files/17569967/dart_defines.zip)

dart_definesフォルダという三つの環境ごとのenvファイルが入っています。

> [!IMPORTANT]
> 環境変数を追加する場合は、READMEの更新も合わせてよろしくお願いします

## 3. ビルド

```
make 
```

