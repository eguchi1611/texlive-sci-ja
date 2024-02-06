# texlive-ja

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

Basic

```shell
/bin/bash -c "curl -sL https://github.com/eguchi1611/texlive-ja/archive/HEAD.tar.gz | tar -x --strip=3 */examples/devcontainer-basic"
```

with Gnuplot

```shell
/bin/bash -c "curl -sL https://github.com/eguchi1611/texlive-ja/archive/HEAD.tar.gz | tar -x --strip=3 */examples/devcontainer-with-gnuplot"
```

## Docker Image

Docker Hub

```
docker pull eguchi1611/texlive-ja:latest
```

GitHub Container Registry

```
docker pull ghcr.io/eguchi1611/texlive-ja:latest
```

| Tag        |                      |
| ---------- | -------------------- |
| latest     | Latest Build         |
| weekly     | Weekly Build         |
| x.x.x, x.x | Git Tag (Deprecated) |
