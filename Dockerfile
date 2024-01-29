FROM buildpack-deps:bookworm-scm

# texliveにパスを通す
ENV PATH=/usr/local/texlive/bin:$PATH

WORKDIR /texlive-install

# インストール構成をコピー
COPY ./texlive.profile .

# texliveをインストール
RUN wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz \
  && tar -xf install-tl-unx.tar.gz --strip-components 1 \
  && ./install-tl -profile texlive.profile \
  && ln -sf /usr/local/texlive/*/bin/* /usr/local/texlive/bin

# コレクション類のインストール
RUN tlmgr update --self --all \
  && tlmgr install \
  collection-langjapanese \
  collection-latexextra \
  collection-mathscience \
  latexmk

# Ghostscriptをインストール
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
  && apt-get -y install --no-install-recommends ghostscript \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /

RUN rm -rf /texlive-install