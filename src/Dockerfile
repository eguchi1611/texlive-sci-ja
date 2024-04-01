FROM buildpack-deps:bookworm-scm

ARG TEXLIVE_MIRROR=https://tug.ctan.org/systems/texlive/tlnet

ENV PATH=/usr/local/texlive/bin:$PATH

WORKDIR /texlive-install

COPY ./texlive.profile .

# texliveをインストール
RUN wget ${TEXLIVE_MIRROR}/install-tl-unx.tar.gz \
  && tar -xf install-tl-unx.tar.gz --strip-components 1 \
  && ./install-tl -profile texlive.profile --location ${TEXLIVE_MIRROR} \
  && ln -sf /usr/local/texlive/*/bin/* /usr/local/texlive/bin

# latexmkのインストール
RUN tlmgr install latexmk

# GhostscriptとGnuplotをインストール
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
  && apt-get -y install --no-install-recommends ghostscript gnuplot \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/local/texlive/texmf-local/tex/latex/gnuplot

# gnuplot-lua-tikzをインストール
RUN gnuplot -e 'set term tikz createstyle' \
  && mktexlsr

WORKDIR /

RUN rm -rf /texlive-install
