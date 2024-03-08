# texlive-sci-ja

TeX Liveのイメージです．日本語と理数系のパッケージが導入されています．VSCodeの開発コンテナで使用する目的で作成しています．

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

VSCodeの開発コンテナの構成ファイルの追加画面で，次のカスタムテンプレートIDを入力してください．

```
ghcr.io/eguchi1611/texlive-sci-ja/template
```

## Docker Image

GitHub Container Registry

```
docker pull ghcr.io/eguchi1611/texlive-sci-ja:latest
```
