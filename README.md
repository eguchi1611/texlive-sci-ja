# texlive-sci-ja

TeX Live のイメージです．日本語と理数系のパッケージが導入されています．VSCode の開発コンテナで使用する目的で作成しています．

導入パッケージ一覧

```
collection-basic
collection-fontsrecommended
collection-langcjk
collection-langjapanese
collection-latex
collection-latexextra
collection-latexrecommended
collection-mathscience
collection-pictures
```

## 開発コンテナのセットアップ

VSCode の開発コンテナの構成ファイルの追加画面で，次のいずれかのカスタムテンプレート ID を入力してください．

Basic

```
ghcr.io/eguchi1611/texlive-ja/basic
```

with-gnuplot

```
ghcr.io/eguchi1611/texlive-ja/with-gnuplot
```

## Docker Image

GitHub Container Registry

```
docker pull ghcr.io/eguchi1611/texlive-ja:latest
```

| TAG    |              |
| ------ | ------------ |
| latest | Latest Build |
