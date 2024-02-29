FROM buildpack-deps:bookworm-scm

ENV PATH=/usr/local/texlive/bin:$PATH

WORKDIR /texlive-install

COPY ./texlive.profile .

# texliveをインストール
RUN wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz \
  && tar -xf install-tl-unx.tar.gz --strip-components 1 \
  && ./install-tl -profile texlive.profile \
  && ln -sf /usr/local/texlive/*/bin/* /usr/local/texlive/bin

# latexmkのインストール
RUN tlmgr install latexmk

# Ghostscriptをインストール
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
  && apt-get -y install --no-install-recommends ghostscript \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /

RUN rm -rf /texlive-install