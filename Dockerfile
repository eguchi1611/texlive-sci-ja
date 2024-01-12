FROM buildpack-deps:bookworm-scm

# インストール構成をコピー
COPY texlive.profile /tmp/texlive-install/

# texliveをインストール
RUN cd /tmp/texlive-install && \
  wget https://ftp.yz.yamagata-u.ac.jp/pub/CTAN/systems/texlive/tlnet/install-tl-unx.tar.gz && \
  tar -xvf install-tl-unx.tar.gz && \
  perl ./install-tl-2*/install-tl --no-interaction --location https://ftp.yz.yamagata-u.ac.jp/pub/CTAN/systems/texlive/tlnet -profile texlive.profile && \
  ln -sf /usr/local/texlive/2023/bin/$(uname -m)-linux /usr/local/texlive/bin && \
  rm -rf /tmp/texlive-install/

# texliveにパスを通す
ENV PATH="/usr/local/texlive/bin:$PATH"

# latexmkのインストール
RUN tlmgr update --self --all && \
  tlmgr install latexmk
