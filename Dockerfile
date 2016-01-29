FROM ubuntu:latest
MAINTAINER Charo Nuguid <me@thegeekettespeaketh.com>

RUN apt-get install wget -y && wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz && tar -xzf install-tl-unx.tar.gz

RUN mkdir -p /profiles/

COPY texlive.profile /profiles/

RUN cd install-tl-*/ && ./install-tl --profile=/profiles/texlive.profile

RUN export PATH=$PATH:/usr/local/texlive/2015/bin/x86_64-linux && tlmgr install latex latex-bin latexconfig latex-fonts

ENV INFOPATH /usr/local/texlive/2015/texmf-dist/doc/info
ENV MANPATH /usr/local/texlive/2015/texmf-dist/doc/man

RUN mkdir -p /source
WORKDIR /source

ENTRYPOINT ["/usr/local/texlive/2015/bin/x86_64-linux/pdftex"]
