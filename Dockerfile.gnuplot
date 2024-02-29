FROM eguchi1611/texlive-ja

# Gnuplotをインストール
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
  && apt-get -y install --no-install-recommends gnuplot

WORKDIR /usr/local/texlive/texmf-local/tex/latex/gnuplot

# gnuplot-lua-tikzをインストール
RUN gnuplot -e 'set term tikz createstyle' \
  && mktexlsr

WORKDIR /
