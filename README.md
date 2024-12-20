# 環境構築手順

## 1. ツールのインストール

```
fvm use 3.24.3
fvm global 3.24.3
```

> [!NOTE]
> fvm自体のインストールはこちら[参考](https://zenn.dev/altiveinc/articles/flutter-version-management-3#fvm-3-%E3%81%AE%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB)

## 2. 環境変数の配置
> [!IMPORTANT]
> 機密なため、開発メンバーへの問い合わせが必要です
> 環境変数を追加する場合は、READMEの更新も合わせてよろしくお願いします
環境変数をまとめたzipファイルをプロジェクトのルートディレクトリで解凍

dart_definesフォルダに２つの環境ごとのenvファイルが入っています。


## 3. ビルド

```
make run-dev
```

# 多言語対応の方法
1. 設定
- `lib/i18n/strings.i18n.json` // 英語
- `lib/i18n/strings_ja.i18n.json` // 日本語
- `lib/i18n/strings_zh-Hans.i18n.json` // 中国簡体字
- `lib/i18n/strings_zh-Hant.i18n.json` // 中国繁体字

上記のファイルにそれぞれの言語をjson形式で書く。

2. ``` make runner ```コマンドでdartコードにコンバートする
3. ```Translation.of(context). ・・・```で呼び出せる

### jsonの定義
命名はページ・コンポーネントであれば、小文字のキャメルケースで書く。
文字列自体の場合は、文字列の内容に則ったものにする。
以下の際にインデント分けして書く
- ページごと
- グローバルコンポーネントごと
- ページ内でのコンポーネントごと
